SHELL := /bin/bash

.PHONY: install uninstall lint package help

help:
	@echo "Targets:"
	@echo "  make install    - run the installer (requires sudo)"
	@echo "  make uninstall  - remove installed theme files (requires sudo)"
	@echo "  make lint       - run shellcheck on helper scripts"
	@echo "  make package    - build theme bundle into dist/"

install:
	@command -v sudo >/dev/null || { echo "error: sudo is required"; exit 1; }
	sudo ./install

uninstall:
	@command -v sudo >/dev/null || { echo "error: sudo is required"; exit 1; }
	sudo ./install --uninstall

lint:
	@command -v shellcheck >/dev/null && shellcheck scripts/*.sh || echo "shellcheck not installed, skipping"

package:
	@mkdir -p dist
	@tar -czf dist/autottheme-bundle.tar.gz themes/ metadata.json
	@echo "wrote dist/autottheme-bundle.tar.gz"
