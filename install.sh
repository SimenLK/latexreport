#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

DIR="latexreport"
# Change this to set the
REF=~/Documents/references.bib
REF_DIR=~/Documents/

mv $DIR/report.tex $DIR/pre.tex $DIR/references.bib .
echo "Moving the files out of $DIR"

rm -rf "$DIR"
echo "Deleting the directory"

if [ -d "$DIR" ]; 
then
	rm -rf "$DIR"
else
	echo "$DIR was succesfully removed!"
fi

if [ -f "$REF" ]; then
    echo "References already there"
    rm references.bib
else
    echo "Moving references to $REF_DIR"
    mv references.bib $REF_DIR
fi
