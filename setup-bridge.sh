#!/bin/bash

# Add a bridge and set ageing to 0 to make it a hub
sudo ip link add name brdg type bridge ageing 0
sudo ip link set brdg up

# Must configure iptables to allow traffic
echo 0 | sudo tee /proc/sys/net/bridge/bridge-nf-call-iptables
