#!/usr/bin/env bash

echo "compiling pdf..."
pandoc -f gfm -t html5 --metadata pagetitle="cv.md" --css style.css -V margin-top=3 -V margin-left=3 -V margin-right=3 -V margin-bottom=3 -V papersize=a4 cv.md -o cv.pdf

echo "compiling html page..."
pandoc --standalone --template template.html cv.md -o index.html

echo "completed"
