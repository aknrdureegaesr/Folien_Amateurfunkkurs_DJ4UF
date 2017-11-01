# Create pdf from tex

FILE=Skript_Praxis*

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
	rm -f ${FILE}.aux ${FILE}.lof ${FILE}.log ${FILE}.out ${FILE}.toc

clean: temp-clean
	rm -f ${FILE}.pdf
