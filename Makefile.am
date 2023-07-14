CLOCAL_AMFLAGS = -I config/m4 -I aclocal
ACLOCAL_AMFLAGS = -I config/m4 -I aclocal

clean:
	@find . -name '*.pyc' | xargs rm -rf
	@find . -name '__pycache__' | xargs rm -rf
	@for trash in *.aux *.bbl *.blg *.lof *.log *.lot *.out *.pdf *.synctex.gz *.toc ; do \
		if [ -f "docs/slides/$$trash" ]; then \
			rm docs/slides/$$trash ; \
		fi ; \
	done

python:
	@$(PY39) -m venv _build
	( \
			. _build/bin/activate; \
			_build/bin/python -m pip install --upgrade pip; \
			_build/bin/python -m pip install -r src/requirements.txt; \
	)

slides:
	python3 -m venv _build
	. ./_build/bin/activate
	python3 -m pip install -r docs/slides/requirements.txt
	cd docs/slides && latexmk -pdf -synctex=1 -shell-escape future

test:
	@$(PY39) -m venv _build
	( \
			. _build/bin/activate; \
			_build/bin/python -m pip install tox; \
			_build/bin/python -m pip install --upgrade pip; \
			_build/bin/python -m pip install -r tests/requirements-security.txt; \
			_build/bin/python -m pip install -r tests/requirements-test.txt; \
	)
