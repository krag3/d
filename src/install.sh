#!/bin/sh

# Initialize PKG_MANAGER variable
PKG_MANAGER=""
DISTRO=""

# Check if apt is installed
if command -v apt >/dev/null 2>&1; then
  PKG_MANAGER="apt"
  DSTRO="debian"
elif command -v brew >/dev/null 2>&1; then
  PKG_MANAGER="brew"
  DISTRO="macos"
else
  echo "\033[31mPlease run this script on a supported system\033[0m"
  echo "\033[31mExiting...\033[0m"; \
  exit 1
fi

echo "\033[33mInstall asdf...\033[0m"
if [ -z `which asdf` ]; then
  . ./install/pkg/git/asdf.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall zsh...\033[0m"
if [ -z `which zsh` ]; then
  . ./install/pkg/$PKG_MANAGER/zsh.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall zinit...\033[0m"
if [ -z `which zinit` ]; then
  . $SRC/install/pkg/curl/zinit.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall zellij...\033[0m"
if [ -z `which zellij` ]; then
  if [ "$DISTRO" = "macos" ]; then
    . $SRC/install/pkg/brew/zellij.sh
  else
    . $SRC/install/pkg/curl/debian/zellij.sh
  fi
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall nushell...\033[0m"
if [ -z `which nu` ]; then
  . $SRC/install/pkg/$PKG_MANAGER/nushell.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall vim...\033[0m"
if [ -z `which vim` ]; then
  . $SRC/install/pkg/asdf/vim.sh
else
  echo "\033[32mSKIP\033[0m"
fi