CLOCAL_AMFLAGS = -I config/m4 -I aclocal
ACLOCAL_AMFLAGS = -I config/m4 -I aclocal

slides:
	python3 -m venv _build
	. ./_build/bin/activate
	python3 -m pip install -rrequirements.txt
	cd slides && latexmk -pdf -synctex=1 -shell-escape future

clean:
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

python:
	@$(PY39) -m venv _build
	( \
			. _build/bin/activate; \
			_build/bin/python -m pip install --upgrade pip; \
			_build/bin/python -m pip install -r src/requirements.txt; \
	)

test:
	@$(PY39) -m venv _build
	( \
			. _build/bin/activate; \
			_build/bin/python -m pip install tox; \
			_build/bin/python -m pip install --upgrade pip; \
			_build/bin/python -m pip install -r tests/requirements-security.txt; \
			_build/bin/python -m pip install -r tests/requirements-test.txt; \
	)
