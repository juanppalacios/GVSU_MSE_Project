# this script compiles .typ files to .pdf files in a specified directory

echo "compiling our typst files to pdfs..."

# todo: use a python script to generate our references
# todo: grab our ./sources/references.txt file -> for all links, add to ./references.bib

# create our compiled pdf folder
mkdir ./pdfs

# convert our .typ files -> .pdf files
typst compile ./research.typ ./pdfs/research.pdf
typst compile ./report.typ ./pdfs/report.pdf

# remove any redundant .pdf files, if any
rm ./*.pdf