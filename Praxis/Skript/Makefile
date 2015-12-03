# Create pdf from tex

FILE=Skript_Praxis*

all: aufgaben loesung

aufgaben:
	pdflatex Skript_Praxis.tex
	pdflatex Skript_Praxis.tex
	$(MAKE) temp-clean

loesung:
	pdflatex Skript_Praxis_Loesung.tex
	pdflatex Skript_Praxis_Loesung.tex
	$(MAKE) temp-clean

temp-clean:
	rm -f ${FILE}.aux ${FILE}.lof ${FILE}.log ${FILE}.out ${FILE}.toc

clean: temp-clean
	rm -f ${FILE}.pdf
