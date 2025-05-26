# SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
# SPDX-License-Identifier: MIT

VERSION = 0.1.0
DESTDIR ?=

INSTALL         ?= install
INSTALL_DATA    ?= $(INSTALL) -m 644

SHELL = sh

UNAME_S = $(shell uname -s)
ifeq ($(UNAME_S),Linux)
prefix      ?= "$${XDG_DATA_HOME:-$${HOME}/.local}"
datarootdir ?= $(prefix)/share
else
datarootdir ?= "$${HOME}/Library/Application Support"
endif

.PHONY: all
all:
	@echo Nothin to do

.PHONY: install
install: install-data

tnotedir = $(DESTDIR)$(datarootdir)/typst/packages/black-desk/tnote/$(VERSION)

.PHONY: install-data
install-data:
	$(INSTALL) -d $(tnotedir)/template
	$(INSTALL_DATA) ./typst.toml $(tnotedir)/typst.toml
	$(INSTALL_DATA) ./lib.typ $(tnotedir)/lib.typ
	$(INSTALL_DATA) ./template/index.typ $(tnotedir)/template/index.typ
	$(INSTALL_DATA) ./template/file-to-include.typ $(tnotedir)/template/file-to-include.typ
