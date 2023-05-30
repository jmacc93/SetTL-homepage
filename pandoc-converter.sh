#!/bin/bash

markdownFiles=$(find . -type f -name "*.md")

# Convert all .md files in this directory hierarchy to .html files
for file in $markdownFiles; do
  htmlFile="${file%.md}.html"
  echo "converting $file to $htmlFile"
  pandoc \
    $file \
    --filter pandoc-katex \
    --css "https://cdn.jsdelivr.net/npm/katex@$(pandoc-katex --katex-version)/dist/katex.min.css" \
    -f markdown -t html \
    -s -o $htmlFile
done
