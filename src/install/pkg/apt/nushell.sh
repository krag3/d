#!/bin/bash

NU_VERSION=0.97.1
curl -LO https://github.com/nushell/nushell/releases/download/${NU_VERSION}/nu-${NU_VERSION}-x86_64-unknown-linux-gnu.tar.gz
mkdir -p ${HOME}/.local/opt/nushell/${NU_VERSION}/
tar xzvf nu-${NU_VERSION}-x86_64-unknown-linux-gnu.tar.gz -C ${HOME}/.local/opt/nushell/${NU_VERSION}/ --strip-components 1
rm -f ./nu-${NU_VERSION}-x86_64-unknown-linux-gnu.tar.gz
# Set symbolic link
ln -sf ${HOME}/.local/opt/nushell/${NU_VERSION}/nu ${HOME}/.local/bin/nu