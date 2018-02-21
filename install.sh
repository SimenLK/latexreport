#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

dirname = ${PWD##*/}

rm README.md
echo "Removing README.md"

mv report.tex pre.tex ../ 
echo "Moving the files out of the directory"

cd .. 
echo "Moving out of the directroy"

rm -rf $dirname
echo "Deleting the directory"

if [ -d $dirname ]
then
	echo "Latexreport is still there!"
fi
