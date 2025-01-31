#!/bin/sh

# Initialize PKG_MANAGER variable
PKG_MANAGER=""
DISTRO=""

# Check if apt is installed
if command -v brew >/dev/null 2>&1; then
  PKG_MANAGER="brew"
  DISTRO="macos"
elif command -v apt >/dev/null 2>&1; then
  PKG_MANAGER="apt"
  DSTRO="debian"
else
  echo "\033[31mPlease run this script on a supported system\033[0m"
  echo "\033[31mExiting...\033[0m"; \
  exit 1
fi

echo "\033[33mInstall mise...\033[0m"
if [ -z `which mise` ]; then
  . $SRC/install/pkg/curl/mise.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall go...\033[0m"
if [ -z `which go` ]; then
  . $SRC/install/pkg/mise/go.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall rust...\033[0m"
if [ -z `which cargo` ]; then
  . $SRC/install/pkg/mise/rust.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall fzf...\033[0m"
if [ -z `which fzf` ]; then
  . $SRC/install/pkg/git/fzf.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall fd...\033[0m"
if [ -z `which fd` ]; then
  . $SRC/install/pkg/mise/fd.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall ripgrep...\033[0m"
if [ -z `which rg` ]; then
  . $SRC/install/pkg/mise/ripgrep.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall bat...\033[0m"
if [ -z `which bat` ]; then
  . $SRC/install/pkg/mise/bat.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall rupa-z...\033[0m"
if [ ! -e "$HOME/.local/opt/rupa-z" ]; then
  . $SRC/install/pkg/git/rupa-z.sh
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
