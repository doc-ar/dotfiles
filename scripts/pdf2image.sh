#!/usr/bin/env bash

set -e

INPUT="$1"
OUTPUT="$2"
TMP_DIR=$(mktemp -d)

if [ -z "$INPUT" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 input.pdf output.pdf"
  exit 1
fi

echo "Converting PDF pages to images..."

# Convert each page to PNG at 300 DPI
pdftoppm -png -r 300 "$INPUT" "$TMP_DIR/page"

echo "Rebuilding image-only PDF..."

# Combine images back into PDF
img2pdf "$TMP_DIR"/page-*.png -o "$OUTPUT"

echo "Done."
echo "Output: $OUTPUT"

# Cleanup
rm -rf "$TMP_DIR"
