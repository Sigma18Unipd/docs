import re
import argparse
import os

def extract_glossary_terms(filepath):
  """
  Parses a .typ file and extracts glossary terms defined with '== Term Name'.

  Args:
    filepath (str): The path to the .typ file.

  Returns:
    list: A list of extracted glossary terms, sorted alphabetically.
          Returns an empty list if the file cannot be read or no terms are found.
  """
  terms = []
  # Regular expression to match lines starting with '==' followed by the term.
  # It captures the term name, optionally ignoring content in parentheses like acronyms.
  # Example: Matches "== Term Name" or "== Term Name (Acronym)"
  # It captures "Term Name" in both cases.
  term_pattern = re.compile(r"^\s*==\s+(.*?)(?:\s+\(.*\))?\s*$")

  try:
    with open(filepath, 'r', encoding='utf-8') as f:
      for line in f:
        match = term_pattern.match(line)
        if match:
          # Extract the first captured group (the term name) and strip whitespace
          term = match.group(1).strip()
          if term: # Ensure the extracted term is not empty
              terms.append(term)
  except FileNotFoundError:
    print(f"Errore: Il file '{filepath}' non è stato trovato.")
    return []
  except Exception as e:
    print(f"Errore durante la lettura del file '{filepath}': {e}")
    return []

  terms.sort() # Sort terms alphabetically
  return terms

if __name__ == "__main__":
  # Set up argument parser to accept file path from command line
  parser = argparse.ArgumentParser(description="Estrae i termini del glossario da un file .typ.")
  parser.add_argument("filepath", help="Percorso del file glossario.typ")

  # Parse command-line arguments
  args = parser.parse_args()

  # Check if the provided path is a file
  if not os.path.isfile(args.filepath):
      print(f"Errore: Il percorso specificato '{args.filepath}' non è un file valido.")
  else:
      # Extract terms using the function
      extracted_terms = extract_glossary_terms(args.filepath)

      # Print the results
      if extracted_terms:
        print("Termini estratti dal glossario:")
        for term in extracted_terms:
          print(f"- {term}")
      elif os.path.exists(args.filepath): # Check if the file exists but no terms were found
          print("Nessun termine del glossario trovato nel formato '== Termine'.")
