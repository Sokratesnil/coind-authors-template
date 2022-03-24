#LaTeX用MakeFile
LATEX = latexmk -c -gg -lualatex
SETTINGS = temp.sty

.DEFAULT_GOAL = all

.PHONY: all
all: template.pdf
%.pdf: %.tex $(SETTINGS) *.tex
	$(LATEX) $<
	make clean

.PHONY: clean
clean:; rm -f *.aux *.nav *.out *.snm *.toc *~ *.dvi *.fls *.fdb_latexmk *.synctex.gz *.blg

.PHONY: distclean
distclean:; rm -f *.aux *.nav *.out *.snm *.toc *~ *.dvi *.fls *.fdb_latexmk *.synctex.gz *.blg *.pdf *.bbl
