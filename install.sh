#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 

cp report.tex pre.tex ../ && cd ../ && rm -rf latexreport
