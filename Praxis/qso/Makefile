# Create pdf from tex

FILE=qso

all: ${FILE}.tex
	pdflatex ${FILE}.tex
	pdflatex ${FILE}.tex
	$(MAKE) temp-clean

compress:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dDownsampleColorImages=true -dColorImageResolution=300 -dNOPAUSE -dBATCH -sOutputFile=${FILE}.300dpi.pdf ${FILE}.pdf

temp-clean:
	rm -f ${FILE}.aux ${FILE}.out ${FILE}.log

clean: temp-clean
	rm -f ${FILE}.pdf ${FILE}.res300.pdf
