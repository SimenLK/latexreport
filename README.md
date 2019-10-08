# latexreport
A latex template for CS report writing.

Add this to your shell for complete automation:

`alias latexreport="git clone https://github.com/SimenLK/latexreport.git;
                    source latexreport/install.sh"`

# References
The install script will move the references file to your home document folder,
and now the report.tex file will refer to this reference file. The thought is
that you should have one reference file for everything. Adding references along
the way, expanding on your bibliography.

Use the references file to easily add and manage your references. 
The included example reference should make the syntax clear, you can also visit
<https://www.sharelatex.com/learn/Bibliography_management_with_bibtex>

The .tex file might have to be compiled at least once with `bibtex report.tex` for it to work.

Added biber to the packages, so the bibliography commands in report.tex has to
be changed to utilize this.
