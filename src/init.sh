#!/bin/sh



echo "\033[33mMake dotlocal dir...\033[0m"

mkdir -p ${HOME}/.local/bin
mkdir -p ${HOME}/.local/opt

echo "\033[33mDeploy dotfiles...\033[0m"

for f in $DOTFILES/.??*
do
  ln -snfv "$f" "${HOME}/`basename $f`"
done

mkdir -p ${HOME}/.config

for f in $DOTCONFIG/*
do
  ln -snfv "$f" "${HOME}/.config/`basename $f`"
done
