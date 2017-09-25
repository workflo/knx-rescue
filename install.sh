#!/bin/bash

set -e

apt-get update

apt-get autoremove -y

apt-get install -y \
    btrfs-progs btrfs-tools \
    cmake g++ libssl-dev libz-dev liblua5.1-dev \
    libgdbm-dev libbz2-dev liblzma-dev git

apt-get clean

cd
git clone https://github.com/workflo/shaback.git
cd shaback/src
cmake .
make install
cd
rm -rf shaback

