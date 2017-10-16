all:	I10.pdf

%.pdf: %.dvi
	dvipdfm $*

%.dvi: %.tex
	latex $*
	bibtex $*
	latex $*
	latex $*

clean:
	rm -f *.bbl *.blg *.dvi *.pdf *.out *.log *.aux
