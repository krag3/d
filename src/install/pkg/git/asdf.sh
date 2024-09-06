#!/bin/bash

if [ ! -f ~/.asdf/asdf.sh ]; then
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf
	~/.asdf/asdf.sh
fi
