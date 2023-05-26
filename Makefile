# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

livehtml:
	sphinx-autobuild "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

setup:
	sudo apt-get install texlive-xetex texlive-latex-base texlive-extra-utils
	sudo apt-get install texlive-fonts-extra

setup_venv_with_pyenv:
	@echo == to have a 'doc' virtualenv to fit the commited .python-version file
	@echo 0. pyenv virtualenv doc
	@echo 1. restart a terminal
	@echo 2. check "doc" virtualenv is activated
	@echo 3. run "$$ pip install -r requirements.txt"

dev_install:
	@echo "For Ubuntu Laptops"
	pyenv virtualenv thesis
	pyenv local thesis
	pip install -r requirements.txt

update:
	pip install -r requirements.txt

clean:
	@echo "Delete _build directory"
	rm -r "$(BUILDDIR)"
