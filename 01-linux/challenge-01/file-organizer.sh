#!/bin/bash

DIR="$1"
txtCount=0
pdfCount=0
jpgCount=0
shCount=0
for file in "$DIR"/*; do
    if [ -f "$file" ]; then
        ext="${file##*.}"
        mkdir -p "$DIR/$ext"
        mv "$file"  "$DIR/$ext"
        if [ "$ext" = ".txt" ]; then 
        ((txtCount++))
        elif [ "$ext" = ".pdf" ]; then 
        ((pdfCount++))
        elif [ "$ext" = ".jpg" ]; then 
        ((jpgCount++))
        elif [ "$ext" = ".sh" ]; then 
        ((shCount++))
    fi
    fi
done

echo "Organized $txtCount .txt files" 
echo "Organized $pdfCount .pdf files" 
echo "Organized $jpgCount .jpg files" 
echo "Organized $shCount .sh files" 
