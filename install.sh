#!/bin/bash -e

apt-get update
apt-get autoremove -y

apt-get install -y btrfs-progs btrfs-tools

apt-get clean
