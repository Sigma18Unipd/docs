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
from concurrent.futures import ThreadPoolExecutor
import sys

search_patterns = ("2-RTB", "3-PB")
logger = logging.getLogger(__name__)
LOG_LEVELS = {0: logging.ERROR, 1: logging.WARNING, 2: logging.INFO, 3: logging.DEBUG}
glossary_pattern_terms = {}
glossary_pattern_mapping = {}
file_pool = None
glossary_pool = ThreadPoolExecutor(max_workers=1)
not_found = set()

def extract_glossary_terms(filepath):
    """
    Parses a .typ file and extracts glossary terms defined with '== Term Name'.

    Args:
      filepath (str): The path to the .typ file.

    Returns:
      dict: A dictionary where keys are glossary terms (str) and values are booleans
            indicating whether the term has a definition.
            Returns an empty dictionary if the file cannot be read or no terms are found.
    """
    glossary_terms = {}
    # Regex to match lines starting with '==' followed by the term.
    # Caputres the term name and ignores acryonyms (e.g., "Term Name (Acronym)")
    term_pattern = re.compile(r"^\s*==\s+(.*?)(?:\s+\(.*\))?\s*$")

    current_term = None
    term_defined = False

    try:
        with open(filepath, "r", encoding="utf-8") as f:
            for line in f:
                term_match = term_pattern.match(line)

                if term_match:
                    # Found a new term line; append previous term to the dictionary
                    if current_term:
                        glossary_terms[current_term] = term_defined

                    current_term = term_match.group(1).strip()
                    term_defined = False
                    # reset if the regex found empty terms
                    if not current_term:
                        current_term = None

                # Check if current line contains definition content
                elif current_term and line.strip():
                    term_defined = True

            # Last term at EOF
            if current_term:
                glossary_terms[current_term.casefold()] = term_defined

    except FileNotFoundError:
        print(f"Error: file '{filepath}' not found.")
        return {}
    except Exception as e:
        print(f"Error reading '{filepath}': {e}")
        return {}

    logging.debug(f"Extracted glossary terms: {glossary_terms}")
    return glossary_terms


def process_file(filepath):
    """
    Maps a .typ file to its corresponding glossary file.
    RTB and PB phases will have different glossary files.
    """
    subdir_root, pattern = extract_path_to_pattern(filepath)
    if pattern is not None:
        if not glossary_pattern_terms.get(pattern): # GIL will prevent race conditions
            glossary_pattern_terms[pattern] = None # lock 
            # find the glossary file and extract the terms in a different thread
            matches = glob.glob(os.path.join(subdir_root, "**", "glossario.typ"), recursive=True)
            if matches:
                glossary_pattern_mapping[pattern] = matches[0]
                glossary_pattern_terms[pattern] = glossary_pool.submit(extract_glossary_terms, matches[0])
            else:
                logger.warning(f"No glossary found for pattern '{pattern}' in '{subdir_root}'")
    else: 
        logger.error(f"Pattern not found in '{filepath}'")
        sys.exit(1)

    # extract glossary terms
    pattern = re.compile(r'#glossario\(\s*["\']([^"\']+)["\']\s*\)')
    terms = []
    with open(filepath, 'r', encoding='utf-8') as f:
        for line in f:
            for match in pattern.finditer(line):
                terms.append(match.group(1))
    
    logger.debug(f"Extracted terms from '{filepath}': {terms}")
    
    # wait until the glossary terms are extracted in the other thread
    glossary_pattern_terms.get(pattern).result()

    for term in terms:
        if term.casefold() not in glossary_pattern_terms.get(pattern):
            not_found.add(term)

def extract_path_to_pattern(filepath, patterns=search_patterns):
    """
    Extracts the path up to and including the specified pattern folder if present.
    
    Args:
        filepath (str): The input filepath
        patterns (tuple): Folder patterns to search for (default: ("2-RTB", "3-PB"))
        
    Returns:
        str: Path up to the pattern, or None if pattern not found
    """
    parts = os.path.normpath(filepath).split(os.sep)
    
    for i, part in enumerate(parts):
        for pattern in patterns:
            if pattern in part:
                return os.path.join(*parts[:i+1]), pattern
    
    return None

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Sigma18 - Typst glossary linter")
    parser.add_argument(
        "paths",
        help="Filepaths of the .typ files to check.",
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
        logging.basicConfig(level=logging.ERROR)
    else:
        log_level = LOG_LEVELS.get(args.verbose, logging.WARN)
        logging.basicConfig(level=log_level)

    for path in args.paths:
        if os.path.isdir(path):
            file_pool = ThreadPoolExecutor(max_workers=os.cpu_count()-1) # IO bound
            files = []
            files.extend(glob.glob(os.path.join(path, "**", "*.typ"), recursive=True))
            with file_pool as executor:
                executor.map(process_file, files)
        elif os.path.isfile(path):
            process_file(path)
        else:
            logger.warning(f"'{path}' is not a valid file or directory.")
    
    if not_found:
        logger.error("Some terms were not found in the glossary:")
        for term in not_found:
            logger.error(f"  - {term}")
    for pattern in search_patterns:
        if glossary_pattern_terms.get(pattern):
            glossary = glossary_pattern_terms.get(pattern).result().items()
            for term, defined in glossary:
                if not defined:
                    logger.warning(f"'{term}' is not defined in the glossary '{glossary_pattern_mapping.get(pattern)}'")