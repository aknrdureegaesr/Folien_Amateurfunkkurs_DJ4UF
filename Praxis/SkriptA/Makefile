# Create pdf from tex

FILE=Skript_Praxis*

all: aufgaben loesung

aufgaben:
	pdflatex Skript_PraxisA.tex
	pdflatex Skript_PraxisA.tex
	$(MAKE) temp-clean

loesung:
	pdflatex Skript_PraxisA_Loesung.tex
	pdflatex Skript_PraxisA_Loesung.tex
	$(MAKE) temp-clean

temp-clean:
	rm -f ${FILE}.aux ${FILE}.lof ${FILE}.log ${FILE}.out ${FILE}.toc

clean: temp-clean
	rm -f ${FILE}.pdf
