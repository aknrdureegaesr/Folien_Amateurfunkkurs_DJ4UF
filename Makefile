# Create pdf from tex

EXPORT_DIR="Kurs-Material"
EXPORT_ARCHIVE="${EXPORT_DIR}_DK0TU_r`date --utc +%Y-%m-%dT%H%MZ`"
PUBLISH_DIR="/var/www/git/www.underlay/download"

# The LaTeX sources for the tech class A slides
a_sources  := $(wildcard  a??.tex)

# The LaTeX sources for the BV slides
bv_sources := $(wildcard bv??.tex)

# The LaTeX sources for the tech class E slides
e_sources  := $(wildcard  e??.tex)

# Default target: Build slides and skript
all: slides skript

.PHONY: all slides

# Target to build all slides:
slides: bv e a
	$(MAKE) temp-clean

.PHONY: slides

# Targets to build specific slides:

bv: $(patsubst %.tex,%.pdf,$(bv_sources))

e: $(patsubst %.tex,%.pdf,$(e_sources))

a: $(patsubst %.tex,%.pdf,$(a_sources))

all_sources := $(a_sources) $(bv_sources) $(e_sources)
all_pdfs := $(patsubst %.tex,%.pdf,$(all_sources))

# Here is the real LaTeX command to build slides for one section.
# (It is also possible to use texi2pdf instead of pdflatex.)
%.pdf: %.tex %.dodia
	pdflatex $<
	pdflatex $<

# When we edit the makefile, we probably have a reason.
# Rebuild in that case.
$(all_pdfs): Makefile

# Some common files are used from everywhere,
# so if one of those changes, the PDF-files need to be rebuild as well:
$(all_pdfs): texdata/preamble.tex texdata/titlepage.tex texdata/*.tex texdata/*.pdf texdata/creative_commons/*.pdf 


# We need two preambles files. Those exist in two alternative versions.
# You decide which to use by copying or setting a link on your box.
# If you don't decide, you get the DK0TU version:
texdata/preamble.tex:
	cp texdata/preamble.dk0tu.tex texdata/preamble.tex

texdata/titlepage.tex:
	cp texdata/titlepage.dk0tu.tex texdata/titlepage.tex

# If you do decide, make will not interfere.
.PRECIOUS: texdata/preamble.tex texdata/titlepage.tex


# We heavily use dia for picture conversion.
# See https://wiki.gnome.org/action/show/Apps/Dia .

# If on your box, dia is in the PATH, you'll be fine.
# But generally, we apparently cannot assume dia is in the PATH :-(.
# So we jump through a few loops to find it in the "usual suspect" places
# and, when found, link it to this working directory for easy access:
dia:
	if test -f "$$(which dia)"; \
	then ln -s "$$(which dia)" dia; \
	else if test -f /Applications/Dia.app/Contents/Resources/bin/dia-cmd; \
	  then ln -s /Applications/Dia.app/Contents/Resources/bin/dia-cmd dia; \
	  else echo >&2 'ERROR: Could not find dia.'; exit 1; \
	  fi; \
    fi

# One thing we do with dia: Convert svg to png.
# TODO: The png files thus generated should follow a naming convention,
# TODO: so they could be more easily distinguished from PNG files
# TODO: that have a reason to be in git.
%.png: %.svg ./dia
	./dia $*.svg  -e $*.png -t png

# Another thing we do with dia: Convert dia files to png.
# (These do follow a naming convention.)
%_diatmp.png: %.dia ./dia
	./dia $*.dia  -e $*_diatmp.png -t png

# There is one target per subdir to do "all things dia" needed in that particular subdir:
%.dodia: Makefile

.PHONY: $(patsubst %.tex,%.dodia,$(all_sources))

# The dependencies for that target are generated
# one subdir at a time as a dependency file.
%.diadep: Makefile
	for f in $*/*.dia; \
    do test -f $$f && t="$*/`basename $$f .dia`_diatmp.png" && echo "$$t: $$f" && echo "$*.dodia: $$t"; \
    echo; \
    done > $*.diadep
	for f in $*/*.svg; \
    do test -f $$f && t="$*/`basename $$f .svg`.png" && echo "$$t: $$f" && echo "$*.dodia: $$t"; \
    echo; \
    done >> $*.diadep

# Conveniently, including dependency files into a Makefile
# causes them to be made (and the content to considered after making):
include $(patsubst %.tex,%.diadep,$(all_sources))

# A picture from e00 is re-used in a00:
a00.dodia: e00.dodia


skript:
	$(MAKE) -C Praxis/SkriptE all
	$(MAKE) -C Praxis/SkriptA all

.PHONY: skript


pull-then-slides:
	git pull
	$(MAKE) slides

.PHONY: pull-then-slides


export: pull-then-slides
	mkdir --parents export/${EXPORT_DIR}
	cp -r docs *.pdf export/${EXPORT_DIR}
	@echo "Material des DK0TU-Amateurfunkkurses http://www.dk0tu.de/Kurse/AFu-Lizenz/" > export/${EXPORT_DIR}/README.txt
	@echo "Export Build: ${EXPORT_ARCHIVE}" > export/${EXPORT_DIR}/version.txt
	@echo "Git Revision: `git show --no-patch --format=%H`" >> export/${EXPORT_DIR}/version.txt
	tar cvzf export/${EXPORT_ARCHIVE}.tar.gz export/${EXPORT_DIR}

.PHONY: export

# TODO beim Export auch compressed Kram erzeugen
publish: export
	cp -ru export/* ${PUBLISH_DIR}
	$(MAKE) clean

.PHONY: publish

temp-clean:
	rm -f *.aux *.log *.snm *.toc *.out *.nav *.vrb *.diadep
	rm -f */*_diatmp.png

clean: temp-clean
	rm -f *.pdf
	rm -rf export

.PHONY: temp-clean clean

compress: resolution screen ebook prepress

.PHONY: compress resolution screen ebook prepress

resolution: $(patsubst %.tex,%.res300.pdf,$(all_sources))

%.res300.pdf: %.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dDownsampleColorImages=true -dColorImageResolution=300 -dNOPAUSE -dBATCH -sOutputFile=$*.res300.pdf $*.pdf

screen: $(patsubst %.tex,%.screen.pdf,$(all_sources))

%.screen.pdf: %.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dBATCH -sOutputFile=$*.screen.pdf $*.pdf

ebook: $(patsubst %.tex,%.ebook.pdf,$(all_sources))

%.ebook.pdf: %.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dBATCH -sOutputFile=$*.ebook.pdf $*.pdf

prepress: $(patsubst %.tex,%.prepress.pdf,$(all_sources))

%.prepress.pdf: %.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dBATCH -sOutputFile=$*.prepress.pdf $*.pdf


# To maximise stability, every good makefile should have this target:
.DELETE_ON_ERROR:

# To maximise stability, every good makefile should end in a comment.


