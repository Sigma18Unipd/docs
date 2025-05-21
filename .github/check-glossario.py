#!/usr/bin/env -S uv --quiet run --script
# /// script
# requires-python = ">=3.12"
# dependencies = [
#    "pyyaml",
# ]
# ///

import glob
import re
import argparse
import os
import logging
from concurrent.futures import ThreadPoolExecutor, Future
import sys
import threading
import yaml

# each file's filepath will be trimmed to whatever matches a search pattern
# from there the script will look for a file matching GLOSSARY_NAME to parse
SEARCH_PATTERNS = ("2-RTB", "3-PB")
GLOSSARY_NAME = "glossario.typ"
# specifies a list of glossary terms not to report missing
# path is relative to the project root
IGNORE_SET = ".github/glossario-ignorelist.yml"

logger = logging.getLogger(__name__)
LOG_LEVELS = {0: logging.ERROR, 1: logging.WARNING, 2: logging.INFO, 3: logging.DEBUG}
glossary_pattern_terms: dict[str, Future | None] = {}
glossary_pattern_mapping: dict[str, str] = {}
glossary_dict_lock = threading.Lock()
ignore_set: set[str] = set()
ignore_set_lock = threading.Lock()
manual_glossary_path = None
file_pool: ThreadPoolExecutor | None = None
glossary_pool = ThreadPoolExecutor(max_workers=1)


def extract_glossary_terms(filepath: str) -> dict[str, bool]:
    """
    Parses a .typ file and extracts glossary terms defined with '== Term Name'.

    Args:
      filepath (str): The path to the .typ file.

    Returns:
      dict: A dictionary where keys are glossary terms (casefolded string)
            and values are booleans indicating whether the term has a definition.
            Returns an empty dictionary if the file cannot be read or no terms are found.
    """
    glossary_terms: dict[str, bool] = {}
    # Regex to match lines starting with '==' followed by the term.
    # Captures the term name and ignores acronyms (e.g., "Term Name (Acronym)")
    term_pattern = re.compile(r"^\s*==\s+(.*?)(?:\s+\(.*\))?\s*$")

    current_term: str | None = None
    term_defined = False

    try:
        with open(filepath, "r", encoding="utf-8") as f:
            for line in f:
                term_match = term_pattern.match(line)

                if term_match:
                    # Found a new term line; append previous term to the dictionary
                    if current_term:
                        glossary_terms[current_term.casefold()] = term_defined

                    current_term = term_match.group(1).strip()
                    term_defined = False
                    # Reset if the regex found empty terms
                    if not current_term:
                        current_term = None

                # Check if current line contains definition content
                elif current_term and line.strip():
                    term_defined = True

            # Last term at EOF
            if current_term:
                glossary_terms[current_term.casefold()] = term_defined

    except FileNotFoundError:
        logger.error(f"Glossary file '{filepath}' not found.")
        return {}
    except IOError as e:
        logger.error(f"Error reading glossary file '{filepath}': {e}")
        return {}
    except Exception as e:
        logger.exception(
            f"An unexpected error occurred while parsing glossary '{filepath}': {e}"
        )
        return {}

    logger.debug(
        f"Extracted glossary terms from '{filepath}': {list(glossary_terms.keys())}"
    )
    return glossary_terms


def extract_path_to_pattern(
    filepath: str, patterns: tuple[str, ...] = SEARCH_PATTERNS
) -> tuple[str | None, str | None]:
    """
    Extracts the path up to and including the specified pattern folder if present.
    Args:
        filepath (str): The input filepath

    Returns:
        str: The path up to the pattern
    """
    path = Path(filepath).resolve()
    parts = path.parts

    for i, part in enumerate(parts):
        for pattern in patterns:
            if pattern in part:
                extracted = Path(*parts[: i + 1])
                logger.debug(
                    f"Extracted pattern '{pattern}' from '{filepath}': {extracted}"
                )
                return str(extracted), pattern

    return None, None


def find_glossary_for_pattern(subdir_root: str, pattern: str) -> str | None:
    """
    Finds the glossary file path for a given subdirectory root and pattern.
    Caches the result.
    """
    # GIL does not help with concurrent writes, this avoids spaciughi
    if manual_glossary_path:
        logger.debug(
            f"Using manual glossary path '{manual_glossary_path}' for pattern '{pattern}'"
        )
        return manual_glossary_path
    with glossary_dict_lock:
        if pattern in glossary_pattern_mapping:
            logger.debug(
                f"Using cached glossary '{glossary_pattern_mapping[pattern]}' for pattern '{pattern}'"
            )
            return glossary_pattern_mapping[pattern]
        logger.debug(
            f"Searching for glossary for pattern '{pattern}' in '{subdir_root}'"
        )
        matches = glob.glob(
            os.path.join(subdir_root, "**", GLOSSARY_NAME), recursive=True
        )
        logger.debug(f"Glossary matches for pattern '{pattern}': {matches}")
        if matches:
            glossary_path = matches[0]
            glossary_pattern_mapping[pattern] = glossary_path
            logger.debug(f"Found glossary '{glossary_path}' for pattern '{pattern}'")
            return glossary_path
        else:
            logger.warning(
                f"No glossary found for pattern '{pattern}' in '{subdir_root}'"
            )
            return None


def get_glossary_terms(filepath: str) -> tuple[Future | None, str]:
    """
    Gets glossary terms for a given file. If haven't already been extracted, starts
    extraction in a new thread and returns a Future object.
    There can be different matching glossaries for given files, due to PB and RTB
    folders each having their own.
    Args:
        glossary_filepath (str | None): Path to the glossary file.

    Returns:
        pattern (str): Directory type (RTB/PB)
        concurrent.futures.Future | None: Future object for the extraction task, or None.
    """
    logger.debug(f"Processing file: '{filepath}'")
    filepath = Path(filepath).expanduser().resolve()
    logger.debug(f"normalized filepath: '{filepath}'")

    search_path, pattern = extract_path_to_pattern(filepath)
    if pattern is None:
        logger.warning(f"RTB/PB pattern not found for file '{filepath}'.")
        return None, None
    glossary_filepath = find_glossary_for_pattern(search_path, pattern)

    # if said glossary has not been parsed yet, start extrraction in a new thread
    with glossary_dict_lock:
        if (
            pattern not in glossary_pattern_terms
            or glossary_pattern_terms[pattern] is None
        ):
            logger.debug(
                f"Starting extraction for '{glossary_filepath}' (pattern: {pattern})"
            )
            future = glossary_pool.submit(extract_glossary_terms, glossary_filepath)
            glossary_pattern_terms[pattern] = future
        else:
            future = glossary_pattern_terms[pattern]

    try:
        return future, pattern
    except Exception as e:
        logger.error(
            f"Error extracting glossary terms for pattern '{pattern}' from '{glossary_filepath}': {e}"
        )
        with glossary_dict_lock:
            glossary_pattern_terms[pattern] = None  # Mark as failed
        return None, pattern


def find_project_root(starting_filepath, max_depth=6) -> str:
    """
    Walks up the directory tree and finds the root by looking for the .git directory.
    """
    current_dir = os.path.abspath(os.path.dirname(starting_filepath))
    parent_dir = None
    for _ in range(max_depth):
        if os.path.isdir(os.path.join(current_dir, ".git")):
            logger.debug(f"Project root found: {current_dir}")
            return current_dir
        parent_dir = os.path.dirname(current_dir)
        if parent_dir == current_dir or not os.path.exists(parent_dir):
            break
        current_dir = parent_dir
    return ""


def load_ignore_set() -> set[str]:
    """
    Loads the ignore list from a YAML file.
    Returns:
        dict: A dictionary of ignored terms.
    """
    global ignore_set
    with ignore_set_lock:
        if ignore_set:
            return ignore_set
        project_root = find_project_root(__file__)
        if project_root:
            logger.debug(f"Project root for ignore set: {project_root}")
            ignore_path = os.path.join(project_root, IGNORE_SET)
            if os.path.exists(ignore_path):
                with open(ignore_path, "r", encoding="utf-8") as f:
                    parsed = yaml.safe_load(f)
                    if parsed and "ignore_list" in parsed:
                        ignore_set = set(parsed["ignore_list"])
                        logger.debug(
                            f"Loaded ignore list from '{ignore_path}': {list(ignore_set)}"
                        )
                    else:
                        logger.warning(
                            f"No 'ignore_list' key found in '{ignore_path}'."
                        )
                        ignore_set = {}
            else:
                logger.warning(f"Ignore list file '{ignore_path}' not found.")
                ignore_set = {}
        else:
            logger.warning("Project root not found, cannot load ignore set.")
            ignore_set = {}
    return ignore_set


def process_file(filepath: str) -> set[str]:
    """
    Processes a single .typ file, extracts glossary terms used, and checks
    if they are defined in the corresponding glossary file for its pattern.

    Args:
        filepath (str): The path to the .typ file.

    Returns:
        filepath (str): The same path passed in. This is really handy when combining back the results
                        keeping track of the filepath relative to each input is not trivial when using multiprocessing
                        and would involve adding a lot more lines
        set[str]: A set of terms found in the file but not in the glossary.
    """
    terms_not_found: set[str] = set()
    used_terms: set[str] = set()

    glossary_terms_future, pattern = get_glossary_terms(filepath)
    if glossary_terms_future is None:
        logger.warning(f"Skipping file '{filepath}' due to missing glossary.")
        return filepath, terms_not_found

    use_term_pattern = re.compile(r'#glossario\(\s*["\']([^"\']+)["\']\s*\)')
    try:
        with open(filepath, "r", encoding="utf-8") as f:
            for line in f:
                for match in use_term_pattern.finditer(line):
                    used_terms.add(match.group(1).casefold())
    except FileNotFoundError:
        logger.error(f"Error: file '{filepath}' not found during term extraction.")
        return filepath, terms_not_found
    except IOError as e:
        logger.error(f"Error reading file '{filepath}' for term extraction: {e}")
        return terms_not_found
    except Exception as e:
        logger.exception(
            f"An unexpected error occurred while extracting terms from '{filepath}': {e}"
        )
        return filepath, terms_not_found
    logger.debug(f"Extracted terms from '{filepath}': {list(used_terms)}")

    # wait until future completion
    ignore_set = load_ignore_set()
    glossary_terms = glossary_terms_future.result()
    for term in used_terms:
        if term not in glossary_terms and term not in ignore_set:
            terms_not_found.add(term)
    return filepath, terms_not_found


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Sigma18 - Typst glossary linter")
    parser.add_argument(
        "paths",
        help="Filepaths or directories of the .typ files to check.",
        type=str,
        nargs="+",
    )
    parser.add_argument(
        "-v",
        "--verbose",
        action="count",
        default=1,
        help="Increase logging verbosity (e.g., -v, -vv).",
    )
    parser.add_argument(
        "-q", "--quiet", action="store_true", help="Suppress all output except errors."
    )
    parser.add_argument(
        "-g",
        "--glossary",
        type=str,
        help="Manually provide the glossary file path. Will override automatic glossary detection.",
    )
    args = parser.parse_args()
    formatter = "%(levelname)s: %(message)s"
    ch = logging.StreamHandler()
    ch.setFormatter(logging.Formatter(formatter))
    logger.addHandler(ch)
    if args.quiet:
        logger.setLevel(logging.ERROR)
    else:
        log_level = LOG_LEVELS.get(args.verbose, logging.WARNING)
        if args.verbose > 2:
            log_level = logging.DEBUG
        logger.setLevel(log_level)

    results: dict[str, set[str]] = {}
    for path in args.paths:
        if os.path.isdir(path):
            file_pool = ThreadPoolExecutor(max_workers=os.cpu_count() - 1)  # IO bound
            files = []
            files.extend(glob.glob(os.path.join(path, "**", "*.typ"), recursive=True))
            with file_pool as executor:
                results.update(dict(executor.map(process_file, files)))
        elif os.path.isfile(path):
            if path.endswith(".typ"):
                _, terms_set = process_file(path)
                results[path] = terms_set
            else:
                logger.warning(f"'{path}' is not a .typ file, skipping")
                sys.exit(0)
        else:
            logger.error(f"'{path}' is not a valid file or directory.")
            sys.exit(0)  # we still return 0 in order for the gha not to fail

    found_missing = False
    for filepath, terms in results.items():
        if terms:
            if found_missing is False:
                logger.error("Some terms were not found in the glossary:")
            found_missing = True
            logger.error(f"  In '{filepath}':")
            for term in sorted(terms):
                logger.error(f"    - {term}")
    if not found_missing:
        logger.info("All glossary citations have a backing glossary entry")

    # lookup missing glossary definitions, requires awaiting all futures
    with glossary_dict_lock:
        glossary_futures_to_wait = list(glossary_pattern_terms.values())

    for future in glossary_futures_to_wait:
        if future and not future.done():
            future.result()

    undefined: dict[str, set[str]] = {}
    for pattern in SEARCH_PATTERNS:
        glossary_future = glossary_pattern_terms.get(pattern)
        glossary_path = glossary_pattern_mapping.get(pattern)

        if glossary_future and glossary_path:
            try:
                glossary_data = glossary_future.result()
                if glossary_data:
                    for term, defined in glossary_data.items():
                        if not defined:
                            if glossary_path not in undefined:
                                undefined[glossary_path] = set()
                            undefined[glossary_path].add(term)
            except Exception:
                pass

    if undefined:
        logger.error(
            "The following terms are present in the glossary lack a definition:"
        )
        for glossary_path, terms in undefined.items():
            logger.error(f"  In {glossary_path}:")
            for term in terms:
                logger.error(f"    - {term}")

    if undefined or found_missing:
        sys.exit(1)
    else:
        sys.exit(0)
