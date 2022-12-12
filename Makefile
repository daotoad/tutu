APPNAME=tutu
TARGET=.$(APPNAME)
LOADER=load_$(APPNAME)


all:
	@echo "Run \"make install\" to install to your home directory"
	@echo "To set up your shell configuration, run \"$(APPNAME) --config\""
	@echo "See README for instructions on installation or configuration"

test:
	t/harness.sh

test_bash:
	t/harness.sh /bin/bash

test_zsh:
	t/harness.sh /usr/bin/zsh

test_all: test_bash test_zsh


remove_core:
	@[ -d $(HOME)/$(TARGET)/lib/core ] && echo "* Removing old $(HOME)/$(TARGET)/lib/core" && rm -rf $(HOME)/$(TARGET)/lib/core || true

uninstall: remove_core 

install: uninstall
	@echo "* Installing libraries to $(HOME)/$(TARGET)/lib"
	@mkdir -p $(HOME)/$(TARGET)/lib/core
	@cp -pr lib/core $(HOME)/$(TARGET)/lib
	@cp   $(LOADER) $(HOME)/$(TARGET)/$(LOADER)
	@echo "* Run  source $(LOADER)"
	@echo "Congratulations, $(APPNAME) is now installed"
	@echo
