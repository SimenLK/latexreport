#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

dirname=${PWD##*/}

rm README.md
echo "Removing README.md"

mv report.tex pre.tex ../ 
echo "Moving the files out of $dirname"

cd .. 
echo "Moving out of $dirname"

rm -rf "$dirname"
echo "Deleting the directory"

if [ -d "$dirname" ];
then
	echo "$dirname is still there!"
	rmdir "$dirname"
fi
