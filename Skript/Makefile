# Create pdf from tex

all: aufgaben loesung

aufgaben:
	pdflatex Skript-Handout.tex
	pdflatex Skript-Handout.tex
	$(MAKE) temp-clean

loesung:
	pdflatex Skript.tex
	pdflatex Skript.tex
	$(MAKE) temp-clean

temp-clean:
	rm -f *.aux *.lof *.log *.out *.toc

clean: temp-clean
	rm -f Skript.pdf
	rm -f Skript-Handout.pdf
