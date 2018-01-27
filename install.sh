#!/bin/bash
# Install script for conveniently taking out the report template and removing itself 
# cdout is a alias (cd ..)
cp report.tex pre.tex ../ && cdout && rm -rf latexreport
