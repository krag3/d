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

# echo "\033[33mInstall asdf...\033[0m"
# if [ -z `which asdf` ]; then
#   . $SRC/install/pkg/git/asdf.sh
# else
#   echo "\033[32mSKIP\033[0m"
# fi

echo "\033[33mInstall mise...\033[0m"
if [ -z `which mise` ]; then
  . $SRC/install/pkg/curl/mise.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall zsh...\033[0m"
if [ -z `which zsh` ]; then
  . $SRC/install/pkg/$PKG_MANAGER/zsh.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall zinit...\033[0m"
if [ ! -e "$HOME/.local/share/zinit/zinit.git/zinit.zsh" ]; then
  . $SRC/install/pkg/curl/zinit.sh
else
  echo "\033[32mSKIP\033[0m"
fi

echo "\033[33mInstall vim...\033[0m"
if [ -z `which vim` ]; then
  . $SRC/install/pkg/asdf/vim.sh
else
  echo "\033[32mSKIP\033[0m"
fi
