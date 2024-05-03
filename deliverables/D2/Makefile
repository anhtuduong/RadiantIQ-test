DELIV_NAME = D2-RadiantIQ-Agile-Methodology
# ----------------------------------------------------------------------

COMMON = ../common
MAIN = main
latex ?= TEXINPUTS=${COMMON}:${TEXINPUTS} pdflatex
bibtex ?= bibtex
mv ?= mv

sources=${MAIN}.tex ${MAIN}.bib \
	$(wildcard sections/*.tex)   \
	$(wildcard images/*)   \
	${COMMON}/rfi.sty ${COMMON}/alias.tex  \
	$(wildcard ${COMMON}/images/*)

# ----------------------------------------------------------------------

${DELIV_NAME}.pdf: ${MAIN}.pdf
	${mv} ${MAIN}.pdf ${DELIV_NAME}.pdf


${MAIN}.pdf: ${sources}
	${latex} ${MAIN}
#	${bibtex} MAIN
	${latex} ${MAIN}
	${latex} ${MAIN}

clean:
	@rm -f *~ sec/*~ ${MAIN}.aux ${MAIN}.bbl ${MAIN}.bcf ${MAIN}.blg ${MAIN}.log ${MAIN}.out ${MAIN}.toc ${DELIV_NAME}.pdf
