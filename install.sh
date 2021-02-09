#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

DIR="latexreport"

mv $DIR/report.tex $DIR/pre.tex .
echo "Moving the files out of $DIR"

if [ -d "$DIR" ]; 
then
    rm -rf "$DIR"
    echo "$DIR was succesfully removed!"
else
    echo "Error"
fi

exit(0)
