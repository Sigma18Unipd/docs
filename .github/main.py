#!/usr/bin/env -S uv --quiet run --script
# /// script
# requires-python = ">=3.12"
# dependencies = [
# ]
# ///

import re
import argparse
import os
import logging

logger = logging.getLogger(__name__)
LOG_LEVELS = {0: logging.ERROR, 1: logging.WARNING, 2: logging.INFO, 3: logging.DEBUG}


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
                glossary_terms[current_term] = term_defined

    except FileNotFoundError:
        print(f"Error: file '{filepath}' not found.")
        return {}
    except Exception as e:
        print(f"Error reading '{filepath}': {e}")
        return {}

    logging.debug(f"Extracted glossary terms: {glossary_terms}")
    return glossary_terms


def find_project_root(starting_filepath, max_depth=6):
    """
    Walks up the directory tree and finds the root by looking for the .git directory.
    """
    current_dir = os.path.abspath(os.path.dirname(starting_filepath))
    for _ in range(max_depth):
        if os.path.isdir(os.path.join(current_dir, ".git")):
            return current_dir
        current_dir = os.path.dirname(current_dir)
        # stops if the root directory is reached
        if current_dir == current_dir or not os.path.exists(current_dir):
            break


def get_glossary_path(filepath):
    """
    Finds the glossary file path based on the provided .typ file path.
    """
    project_root = find_project_root(filepath)
    if not project_root:
        print("Error: Project root not found.")
        return None
    glossary_path = os.path.join(project_root, "glossary.typ")
    if not os.path.isfile(glossary_path):
        print(f"Error: Glossary file '{glossary_path}' not found.")
        return None

    return glossary_path


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
