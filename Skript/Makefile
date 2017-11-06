# Create pdf from tex

all: aufgaben loesung

aufgaben: appendix
	pdflatex Skript-Handout.tex
	pdflatex Skript-Handout.tex
	$(MAKE) temp-clean

loesung: appendix
	pdflatex Skript.tex
	pdflatex Skript.tex
	$(MAKE) temp-clean

appendix:
	$(MAKE) -C appendix/logbooks all

.PHONY: appendix

temp-clean:
	rm -f *.aux *.lof *.log *.out *.toc

clean: temp-clean
	rm -f Skript.pdf
	rm -f Skript-Handout.pdf
