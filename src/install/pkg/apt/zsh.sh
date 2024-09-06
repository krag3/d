#!/bin/bash

if [ "$(id -u)" -eq 0]; then
    apt -y install zsh
else
    sudo apt -y install zsh
fi
