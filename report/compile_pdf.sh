# this script compiles .typ files to .pdf files in a specified directory

echo "compiling our typst files to pdfs..."

# create our compiled pdf folder
mkdir ./pdfs

# convert our .typ files -> .pdf files
typst compile ./research.typ ./pdfs/research.pdf
typst compile ./report.typ ./pdfs/report.pdf

# remove any redundant .pdf files, if any
rm ./*.pdf