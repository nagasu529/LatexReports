MAIN=main
WRAPPER=fullpaper_wrapper.tex
FULL=fullpaper.tex
ZIP_NAME=fullpaper_package.zip

all: pdf

pdf:
	xelatex $(MAIN).tex
	bibtex $(MAIN)
	xelatex $(MAIN).tex
	xelatex $(MAIN).tex

fullpaper:
	echo "\input{$(MAIN)}" > $(WRAPPER)
	latexpand --expand-bbl $(WRAPPER) > $(FULL)
	@echo "Created $(FULL)"

fullzip: fullpaper
	rm -rf fullpaper_package $(ZIP_NAME)
	mkdir -p fullpaper_package
	mkdir -p fullpaper_package/figures

	cp $(FULL) fullpaper_package/
	cp -r figures/* fullpaper_package/figures/

	cd fullpaper_package && zip -r ../$(ZIP_NAME) .
	@echo "Created ZIP: $(ZIP_NAME)"

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk
	rm -f $(FULL) $(WRAPPER)
	rm -rf fullpaper_package $(ZIP_NAME)