#!/bin/bash

# Function for compressing a PDF
pdf_compressor() {
  local input_file=$1
  local output_file=$2
  gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$output_file" "$input_file"
}

# Function for concatenating PDFs
pdf_concat() {
  local output_file=$1
  shift
  local input_files="$@"
  gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="$output_file" $input_files
}

# Check the command to run
case $1 in
  compress)
    if [ $# -ne 3 ]; then
      echo "Usage: $0 compress <input_file> <output_file>"
      exit 1
    fi
    pdf_compressor $2 $3
    ;;
  concat)
    if [ $# -lt 3 ]; then
      echo "Usage: $0 concat <output_file> <input_files...>"
      exit 1
    fi
    output_file=$2
    shift 2
    pdf_concat $output_file "$@"
    ;;
  *)
    echo "Usage: $0 {compress|concat} [...]"
    exit 1
    ;;
esac
