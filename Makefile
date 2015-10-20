# Create pdf from tex

FILE=*
EXPORT_DIR="Kurs-Material"
EXPORT_ARCHIVE="${EXPORT_DIR}_DK0TU_r`date --utc +%Y-%m-%dT%H%MZ`"
PUBLISH_DIR="/home/webgit/dk0tu.underlay/download"

all: slides

slides: bv e a

# FIXME pdflatex generiert leider immer nur den ersten Regex Match -> texi2pdf
bv: bv??.tex
	texi2pdf --shell-escape bv??.tex
	texi2pdf --shell-escape bv??.tex
	$(MAKE) temp-clean

e: e??.tex
	texi2pdf --shell-escape e??.tex
	texi2pdf --shell-escape e??.tex
	$(MAKE) temp-clean

a: a??.tex
	texi2pdf --shell-escape a??.tex
	texi2pdf --shell-escape a??.tex
	$(MAKE) temp-clean

export: slides
	mkdir --parents export/${EXPORT_DIR}
	cp -r docs *.pdf export/${EXPORT_DIR}
	@echo "Material des DK0TU-Amateurfunkkurses http://www.dk0tu.de/Kurse/AFu-Lizenz/" > export/${EXPORT_DIR}/README.txt
	@echo "Export Build: ${EXPORT_ARCHIVE}" > export/${EXPORT_DIR}/version.txt
	@echo "Git Revision: `git show --no-patch --format=%H`" >> export/${EXPORT_DIR}/version.txt
	tar cvzf export/${EXPORT_ARCHIVE}.tar.gz export/${EXPORT_DIR}

# TODO beim Export auch compressed Kram erzeugen
publish: export
	cp -ru export/* ${PUBLISH_DIR}
	$(MAKE) clean

temp-clean:
	rm -f ${FILE}.aux ${FILE}.log ${FILE}.snm ${FILE}.toc ${FILE}.out ${FILE}.nav ${FILE}.vrb
	find . \( -name *_diatmp.png -exec rm {} + \)

clean: temp-clean
	rm -f ${FILE}.pdf
	rm -rf export

compress: resolution screen ebook prepress

resolution:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dDownsampleColorImages=true -dColorImageResolution=300 -dNOPAUSE -dBATCH -sOutputFile=${FILE}.res300.pdf ${FILE}.pdf

screen:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dBATCH -sOutputFile=${FILE}.screen.pdf ${FILE}.pdf

ebook:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dBATCH -sOutputFile=${FILE}.ebook.pdf ${FILE}.pdf

prepress:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dBATCH -sOutputFile=${FILE}.prepress.pdf ${FILE}.pdf
