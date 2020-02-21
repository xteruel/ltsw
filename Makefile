DNAME=main

LATEX=pdflatex
BIBTEX=bibtex
DVIPDF=dvipdf

.PHONY: clean all

all: $(DNAME).pdf

$(DNAME).pdf: $(DNAME).dvi 
	@test -s $(DNAME).dvi && $(DVIPDF) $(DNAME) || echo &>/dev/null
	@test -s $(DNAME).pdf

$(DNAME).dvi: $(DNAME).tex $(DNAME).aux $(wildcard tex/*.tex)
	$(LATEX) $(DNAME).tex
	$(LATEX) $(DNAME).tex
	@test -s $(DNAME).dvi || touch $(DNAME).dvi

$(DNAME).aux: $(DNAME).tex $(wildcard bib/*.bib)
	$(LATEX) $(DNAME).tex
	$(BIBTEX) $(DNAME).aux

$(DNAME).tex:
	@cp etc/$(CLASS)/main.tex ./$(DNAME).tex 2> /dev/null && echo "Setting $(CLASS) LaTeX template" || cat README.md
	@test -s $(DNAME).tex

clean:
	rm -f *.aux *.dvi *.log
	rm -f *.bbl *.blg
	rm -f *.out *.toc
	rm -f *.pdf
