#!/bin/bash

# this script compiles .typ files to .pdf files in a specified directory

python ./sources/reference_tool.py

if [ ! -d "$out"]; then
  echo "creating ./out directory for compiled reports..."
  mkdir ./out
fi

# convert our .typ files -> .pdf files
echo "compiling our typst files to pdfs..."
typst compile ./research.typ ./out/research.pdf
typst compile ./report.typ ./out/report.pdf

pdf_count=`ls -1 *.pdf 2>/dev/null | wc -l`
if [ $pdf_count != 0 ]; then
  echo "removing redundant ./*.pdf files."
  rm ./*.pdf
fi