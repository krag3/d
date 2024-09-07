.PHONY: all
all: check init install load

export ROOT := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
export SRC = $(ROOT)/src
export DOTFILES = $(ROOT)/dotfiles
export DOTCONFIG = $(ROOT)/dotconfig

.PHONY: check
check:
	@$(SRC)/check.sh

.PHONY: init
init:
	@$(SRC)/init.sh

.PHONY: install
install:
	@$(SRC)/install.sh

.PHONY: install-shell-util
install-shell-util:
	@$(SRC)/install-shell-util.sh

.PHONY: load
load:
	@$(SRC)/load.sh

.PHONY: clean
clean:
	@$(SRC)/clean.sh