#!/usr/bin/env -S uv --quiet run --script
# /// script
# requires-python = ">=3.12"
# dependencies = [
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

search_patterns = ("2-RTB", "3-PB")

logger = logging.getLogger(__name__)
LOG_LEVELS = {0: logging.ERROR, 1: logging.WARNING, 2: logging.INFO, 3: logging.DEBUG}
glossary_pattern_terms: dict[str, Future | None] = {}
glossary_pattern_mapping: dict[str, str] = {}
glossary_dict_lock = threading.Lock()
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
        logger.exception(f"An unexpected error occurred while parsing glossary '{filepath}': {e}")
        return {}

    logger.debug(f"Extracted glossary terms from '{filepath}': {list(glossary_terms.keys())}")
    return glossary_terms


def extract_path_to_pattern(filepath: str, patterns: tuple[str, ...] = search_patterns) -> str | None:
    """
    Extracts the path up to and including the specified pattern folder if present.
    Args:
        filepath (str): The input filepath

    Returns:
        str: The path up to the pattern
    """
    parts = os.path.normpath(filepath).split(os.sep)

    for i, part in enumerate(parts):
        for pattern in patterns:
            if pattern in part: # Using 'in' to allow for variations like "2-RTB-docs"
                return os.path.join(*parts[:i+1])

    return None


def find_glossary_for_pattern(subdir_root: str, pattern: str) -> str | None:
    """
    Finds the glossary file path for a given subdirectory root and pattern.
    Caches the result.
    """
    # GIL does not help with concurrent writes, this avoids spaciughi
    with glossary_dict_lock:
        if pattern in glossary_pattern_mapping:
            return glossary_pattern_mapping[pattern]

        matches = glob.glob(os.path.join(subdir_root, "**", "glossario.typ"), recursive=True)

        if matches:
            glossary_path = matches[0]
            glossary_pattern_mapping[pattern] = glossary_path
            logger.debug(f"Found glossary '{glossary_path}' for pattern '{pattern}'")
            return glossary_path
        else:
            logger.warning(f"No glossary found for pattern '{pattern}' in '{subdir_root}'")
            glossary_pattern_mapping[pattern] = None
            return None

def get_glossary_terms(filepath: str) -> tuple[Future| None, str]:
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
    pattern = extract_path_to_pattern(filepath) 
    if pattern is None:
        logger.warning(f"Pattern not found for file '{filepath}'.")
        return None, None
    glossary_filepath = find_glossary_for_pattern(filepath, pattern)

    # if said glossary has not been parsed yet, start extrraction in a new thread
    with glossary_dict_lock:
        if pattern not in glossary_pattern_terms or glossary_pattern_terms[pattern] is None:
            logger.debug(f"Starting extraction for '{glossary_filepath}' (pattern: {pattern})")
            future = glossary_pool.submit(extract_glossary_terms, glossary_filepath)
            glossary_pattern_terms[pattern] = future
        else:
            future = glossary_pattern_terms[pattern]

    try:
        return future
    except Exception as e:
        logger.error(f"Error extracting glossary terms for pattern '{pattern}' from '{glossary_filepath}': {e}")
        with glossary_dict_lock:
             glossary_pattern_terms[pattern] = None # Mark as failed
        return None


def process_file(filepath: str) -> set[str]:
    """
    Processes a single .typ file, extracts glossary terms used, and checks
    if they are defined in the corresponding glossary file for its pattern.

    Args:
        filepath (str): The path to the .typ file.

    Returns:
        set[str]: A set of terms found in the file but not in the glossary.
    """
    terms_not_found: set[str] = set()
    used_terms: list[str] = []

    glossary_terms_future, pattern = get_glossary_terms(filepath)
    if glossary_terms_future is None:
        logger.warning(f"Skipping file '{filepath}' due to missing glossary.")
        return terms_not_found

    use_term_pattern = re.compile(r'#glossario\(\s*["\']([^"\']+)["\']\s*\)')
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            for line in f:
                for match in use_term_pattern.finditer(line):
                    used_terms.append(match.group(1))
    except FileNotFoundError:
        logger.error(f"Error: file '{filepath}' not found during term extraction.")
        return terms_not_found
    except IOError as e:
        logger.error(f"Error reading file '{filepath}' for term extraction: {e}")
        return terms_not_found
    except Exception as e:
         logger.exception(f"An unexpected error occurred while extracting terms from '{filepath}': {e}")
         return terms_not_found
    logger.debug(f"Extracted terms from '{filepath}': {used_terms}")

    # wait until future completion
    glossary_terms = glossary_terms_future.result()

    for term in used_terms:
        if term.casefold() not in glossary_terms:
             terms_not_found.add(term)
             logger.debug(f"Term '{term}' not found in glossary for pattern '{pattern}'")
    return terms_not_found



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
        help="Manually provide the glossary file path",
    )
    args = parser.parse_args()

    if args.quiet:
        logging.basicConfig(level=logging.ERROR, format='%(levelname)s: %(message)s')
    else:
        log_level = LOG_LEVELS.get(args.verbose, logging.WARNING)
        logging.basicConfig(level=log_level, format='%(levelname)s: %(message)s')

    results: list[set[str]] = []
    for path in args.paths:
        if os.path.isdir(path):
            file_pool = ThreadPoolExecutor(max_workers=os.cpu_count()-1) # IO bound
            files = []
            files.extend(glob.glob(os.path.join(path, "**", "*.typ"), recursive=True))
            with file_pool as executor:
                results = list(executor.map(process_file, files))
        elif os.path.isfile(path) and path.endswith(".typ"):
            results=process_file(path)
        else:
            logger.error(f"'{path}' is not a valid file or directory.")
            sys.exit(0)


    total_not_found: set[str] = set()
    for terms_set in results:
        total_not_found.update(terms_set)

    if total_not_found:
        logger.error("Some terms were not found in the glossary:")
        for term in sorted(total_not_found):
            logger.error(f"  - {term}")
    else:
        logger.info("All glossary citations have a backing glossary entry")


    with glossary_dict_lock:
        glossary_futures_to_wait = list(glossary_pattern_terms.values())

    for future in glossary_futures_to_wait:
        if future and not future.done():
            future.result()

    undefined = {}
    for pattern in search_patterns:
        glossary_future = glossary_pattern_terms.get(pattern)
        glossary_path = glossary_pattern_mapping.get(pattern)

        if glossary_future and glossary_path:
            try:
                glossary_data = glossary_future.result()
                if glossary_data:
                    for term, defined in glossary_data.items():
                        if not defined:
                            undefined[glossary_path] = term
            except Exception:
                pass

    if undefined:
        logger.error("The following terms are defined but not used:")
        for glossary_path, terms in undefined.items():
            logger.error(f"  In {glossary_path}:")
            for term in terms:
                logger.error(f"    - {term}")

    if undefined or total_not_found:
        sys.exit(1)
    else:
        sys.exit(0)