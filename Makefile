all:
	platex    -kanji=utf8 main
	pbibtex   -kanji=utf8 main
	platex    -kanji=utf8 main
	platex    -kanji=utf8 main
	dvipdfmx  -p a4 main
	mv main.pdf docs/main.pdf
	open docs/main.pdf
clean:
	/bin/rm -f *~ *.log *.dvi *.blg *.aux *.out *.bbl *.lot *.toc *.lof *.pdf
