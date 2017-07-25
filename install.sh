#!/bin/bash

set -e

apt-get autoremove -y

apt-get install -y btrfs-progs btrfs-tools

apt-get clean
