all:	I10.pdf

%.pdf: %.dvi
	dvipdf $*

%.dvi: %.tex
	latex $*

clean:
	rm *.dvi *.pdf *.out *.log *.aux
