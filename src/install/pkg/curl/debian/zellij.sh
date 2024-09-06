#!/bin/bash


ZELLIJ_VERSION=0.40.1
curl -LO https://github.com/zellij-org/zellij/releases/download/v${ZELLIJ_VERSION}/zellij-x86_64-unknown-linux-musl.tar.gz
mkdir -p ${HOME}/.local/opt/zellij/${ZELLIJ_VERSION}/
tar xzvf zellij-x86_64-unknown-linux-musl.tar.gz -C ${HOME}/.local/opt/zellij/${ZELLIJ_VERSION}/
rm -f ./zellij-x86_64-unknown-linux-musl.tar.gz
# Set symbolic link
ln -sf ${HOME}/.local/opt/zellij/${ZELLIJ_VERSION}/zellij ${HOME}/.local/bin/zellij
