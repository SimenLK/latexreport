#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

mv report.tex pre.tex ../ 
echo "Moving the files out of the directory"

cd .. 
echo "Moving out of the directroy"

rm -rf latexreport
echo "Deleting the directory"

if [ -d latexreport ]
then
	echo "Latexreport is still there!"
fi
