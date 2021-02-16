filename=report

pdf: ps
	ps2pdf ${filename}.ps

html:
	@#latex2html -split +0 -info "" -no_navigation ${filename}
	htlatex ${filename}

ps:	dvi
	dvips -t letter ${filename}.dvi

dvi:
	latex ${filename}
	biber ${filename}||true
	latex ${filename}
	latex ${filename}

read:
	evince ${filename}.pdf &

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg,bcf,run.xml,fls,synctex.gz,fdb_latexmk}

