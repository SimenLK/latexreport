#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

mv report.tex pre.tex ../ 
echo "Moving the files out of the directory"
cd .. && rm -rf latexreport
echo "Deleting the directory"
