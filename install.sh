#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

DIR="latexreport"
# Change this to set the
REF=~/keybase/public/simenlk/references.bib
REF_DIR=~/keybase/public/simenlk/

mv $DIR/report.tex $DIR/pre.tex $DIR/references.bib .
echo "Moving the files out of $DIR"

if [ -d "$DIR" ]; 
then
    rm -rf "$DIR"
else
    echo "$DIR was succesfully removed!"
fi

