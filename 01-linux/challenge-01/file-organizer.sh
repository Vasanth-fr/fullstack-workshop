#!/bin/bash
set -euo pipefail

# Validate argument
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

DIR="$1"

if [[ ! -d "$DIR" ]]; then
  echo "Error: Directory does not exist -> $DIR"
  exit 1
fi

txtCount=0
pdfCount=0
jpgCount=0
shCount=0

# Loop through files in directory
for file in "$DIR"/*; do
  [[ -f "$file" ]] || continue

  ext="${file##*.}"

  mkdir -p "$DIR/$ext"
  mv "$file" "$DIR/$ext"

  case "$ext" in
    txt) ((txtCount++)) ;;
    pdf) ((pdfCount++)) ;;
    jpg) ((jpgCount++)) ;;
    sh)  ((shCount++)) ;;
  esac
done

echo "Organized $txtCount .txt files"
echo "Organized $pdfCount .pdf files"
echo "Organized $jpgCount .jpg files"
echo "Organized $shCount .sh files"
