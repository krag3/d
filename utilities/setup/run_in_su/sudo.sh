#!/bin/bash

if [ $# != 1 ]; then
  echo "require 1 args of user name"
	exit 1
fi

apt-get -y install sudo

echo "${1}  ALL=(ALL:ALL) ALL" >> /etc/sudoers
