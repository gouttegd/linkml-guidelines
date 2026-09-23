DOCUMENT_NAME = linkml-guidelines

XSL_TO_HTML = xsl/html.xsl
XSL_TO_FO = xsl/fo.xsl
DB_IMAGES = $(realpath imgs/docbook)

all: html pdf

html: $(DOCUMENT_NAME).html

pdf: $(DOCUMENT_NAME).pdf

$(DOCUMENT_NAME).html: $(DOCUMENT_NAME).xml $(XSL_TO_HTML)
	xsltproc --xinclude \
	         --output $@ $(XSL_TO_HTML) $<

$(DOCUMENT_NAME).pdf: $(DOCUMENT_NAME).fo
	fop $< $@

$(DOCUMENT_NAME).fo: $(DOCUMENT_NAME).xml $(XSL_TO_FO)
	xsltproc --xinclude \
	         --stringparam admon.graphics.path   $(DB_IMAGES)/ \
	         --stringparam callout.graphics.path $(DB_IMAGES)/callouts/ \
	         --output $@ $(XSL_TO_FO) $<

clean:
	rm -f $(DOCUMENT_NAME).fo

mrproper: clean
	rm -f $(DOCUMENT_NAME).html $(DOCUMENT_NAME).pdf

.PHONY: clean mrproper
