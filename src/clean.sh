#!/bin/sh


echo "\033[33mRemove dotfiles...\033[0m"

for f in $DOTFILES/.??*
do
  unlink "${HOME}/`basename $f`"
done

mkdir -p ${HOME}/.config

for f in $DOTCONFIG/*
do
  unlink "${HOME}/.config/`basename $f`"
done

