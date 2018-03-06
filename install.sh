#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

DIR=${PWD##*/}

mv report.tex pre.tex ../ 
echo "Moving the files out of $DIR"

cd .. 
echo "Moving out of $DIR"

rm -rf "$DIR"
echo "Deleting the directory"

if [ -d "$DIR" ]; 
then
	rm -rf "$DIR"
else
	echo "$DIR was succesfully removed!"
fi
