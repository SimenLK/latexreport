#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

DIR="latexreport"

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
