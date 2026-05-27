MAIN=main
EXPANDED=main_expanded.tex

pdf:
	xelatex $(MAIN).tex
	bibtex $(MAIN)
	xelatex $(MAIN).tex
	xelatex $(MAIN).tex
PACKAGE_DIR=claude_package

package-for-claude:
	rm -rf $(PACKAGE_DIR)
	mkdir -p $(PACKAGE_DIR)/figures
	cp $(EXPANDED) $(PACKAGE_DIR)/
	cp -r figures/* $(PACKAGE_DIR)/figures/
	@echo "Package for Claude is created: $(PACKAGE_DIR).tar.gz"

expand:	
	latexpand --empty-comments --expand-bbl $(MAIN).tex > $(EXPANDED)
	@echo "merged $(EXPANDED) is done"	
