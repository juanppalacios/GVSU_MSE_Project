
'''
  this tool is used to convert a link to a BibTex reference ready for use in
  our research and report typst files

  note: this script was inspired by @Kildrese on GitHub, you can find the original here
  credit: https://github.com/Kildrese/scholarBibTex/tree/main
  todo: figure out how to properly fork/give credit, we take plagiarism seriously + figure out licensing issues

  warning: running web crawlers from single IP may lead to status 404 aka blocked,
  try to implement proxy rotation with some timeout between requests,
  also, check proxy before running a request,
  then, check if we already have a source converted to avoid redundant requests

  # todo: use a python script to generate our references
  # todo: grab our ./sources/references.txt file -> for all links, add to ./references.bib
'''

import requests
from bs4 import BeautifulSoup

'''
# original version:
  - paste title
  - send request for url
  - find citation id
  - get citation
  - paste citation

# modified version:
  - parse references.txt for titles
  -   check for reference already in ../references.bib, print status
  - send request for urls
  - find citation id
  - get citation
  - save citation in ../references.bib, save pdf in ./papers as "title_reference.pdf"
'''

new_sources = False

if new_sources:
  print('retrieving new references...')
else:
  print('references up to date!')