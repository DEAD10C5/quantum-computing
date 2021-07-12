.PHONY: slides

slides: ## Generate the PDF of slide deck
	python3 -m venv _build
	. ./_build/bin/activate
	python3 -m pip install -rrequirements.txt
	cd slides && latexmk -pdf -synctex=1 -shell-escape future

clean: ## clean everything up
	@find . -name '*.pyc' | xargs rm -rf
	@find . -name '__pycache__' | xargs rm -rf
	@for trash in *.aux *.bbl *.blg *.lof *.log *.lot *.out *.pdf *.synctex.gz *.toc ; do \
		if [ -f "book/$$trash" ]; then \
			rm -rf book/$$trash ; \
			rm book/frontmatter/$$trash ; \
			rm book/mainmatter/$$trash ; \
			rm book/backmatter/$$trash ; \
		fi ; \
	done