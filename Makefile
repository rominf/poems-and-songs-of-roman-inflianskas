# Directory where the TEI Stylesheets will be cloned
STYLESHEETS_DIR := tei-stylesheets

# Source XML file and output files
SOURCE_XML := poems-and-songs-of-roman-inflianskas.xml
LATEX_FILE := $(basename $(SOURCE_XML)).latex
PDF_FILE := $(LATEX_FILE:.latex=.pdf)

.PHONY: all clean

all: $(PDF_FILE)

$(STYLESHEETS_DIR):
	@if [ ! -d "$@" ]; then \
		echo "Cloning TEI Stylesheets..."; \
		git clone https://github.com/TEIC/Stylesheets "$@"; \
	else \
		echo "Directory $@ already exists."; \
	fi

$(LATEX_FILE): $(SOURCE_XML) $(STYLESHEETS_DIR)/profiles/default/latex/to.xsl
	@echo "Generating LaTeX file..."
	$(STYLESHEETS_DIR)/bin/teitolatex "$<"

$(STYLESHEETS_DIR)/profiles/default/latex/to.xsl: stylesheet.xsl | $(STYLESHEETS_DIR)
	@echo "Copying custom XSLT stylesheet..."
	cp "$<" "$@"

$(PDF_FILE): $(LATEX_FILE)
	@echo "Compiling PDF file with XeLaTeX..."
	xelatex -interaction=nonstopmode "$<"

clean:
	@echo "Cleaning up generated files..."
	rm -f $(LATEX_FILE) $(PDF_FILE)

.PHONY: all clean
