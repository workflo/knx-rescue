#!/bin/bash

set -e

KNOPPIX_PATH="/media/sda1"
for i in dev/pts proc sys dev tmp; do
  umount $KNOPPIX_PATH/knx/source/KNOPPIX/$i
done
sed -i '2,$d' $KNOPPIX_PATH/knx/source/KNOPPIX/etc/resolv.conf
