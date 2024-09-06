#!/bin/bash

if [ $# != 1 ]; then
  echo "require 1 args of ip addr"
	exit 1
fi


INTERFACES_VB_ADDR=${1}
INTERFACES_VB_NETWORK=192.168.1.0
INTERFACES_VB_NETMASK=255.255.255.0
INTERFACES_VB_GATEWAY=192.168.1.1

DEVICE_NAME=$(ip route | sed -n 1P  | sed 's/^.\+dev\s\([a-z0-9]\+\).\+/\1/')

sudo sed -i \
      -e "s/\(iface ${DEVICE_NAME} inet dhcp\)/#\1/" \
      /etc/network/interfaces \
    && { \
        echo "auto  ${DEVICE_NAME}"; \
        echo "iface ${DEVICE_NAME} inet static"; \
        echo "  address ${INTERFACES_VB_ADDR}"; \
        echo "  network ${INTERFACES_VB_NETWORK}"; \
        echo "  netmask ${INTERFACES_VB_NETMASK}"; \
        echo "  gateway ${INTERFACES_VB_GATEWAY}"; \
        echo "  dns-nameservers 8.8.8.8 ${INTERFACES_VB_GATEWAY}"; \
    } | sudo tee /etc/network/interfaces.d/local

sudo systemctl restart ifup@${DEVICE_NAME}

