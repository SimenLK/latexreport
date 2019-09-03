#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

DIR=${PWD##*/}

mv latexreport/report.tex latexreport/pre.tex latexreport/references.bib .
echo "Moving the files out of $DIR"

rm -rf "$DIR"
echo "Deleting the directory"

if [ -d "$DIR" ]; 
then
	rm -rf "$DIR"
else
	echo "$DIR was succesfully removed!"
fi
