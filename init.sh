#!/bin/bash

set -e
KNOPPIX_PATH="/media/sda1"

mount | grep $KNOPPIX_PATH || mount $KNOPPIX_PATH

START=$(date +'%s')
# Disable screensaver
xscreensaver-command -exit
# One sub-directory will be used for the Master-CD
mkdir -p $KNOPPIX_PATH/knx/master
cd $KNOPPIX_PATH/knx
# You will need a swapfile
dd if=/dev/zero of=swapfile bs=1M count=500
mkswap swapfile ; swapon swapfile
# Make a sub-directory for the source
mkdir -p $KNOPPIX_PATH/knx/source/KNOPPIX
echo "Copy the KNOPPIX files to your source directory."
echo "This will take a long time!"
cp -rp /KNOPPIX/* $KNOPPIX_PATH/knx/source/KNOPPIX
# Additionally, copy the files to build the ISO later
rsync -aH --exclude="KNOPPIX/KNOPPIX*" /mnt-system/* $KNOPPIX_PATH/knx/master
# gunzip inital RAM-disk
mkdir -p $KNOPPIX_PATH/knx/minirt/minirtdir
cp $KNOPPIX_PATH/knx/master/boot/isolinux/minirt.gz $KNOPPIX_PATH/knx/minirt/
cd $KNOPPIX_PATH/knx/minirt/
gunzip minirt.gz
cd minirtdir
cpio -imd --no-absolute-filenames < ../minirt
# Enable screensaver
su knoppix -c "xscreensaver -nosplash &"
echo -e "\nFinished! Used time: $(expr $(expr $(date +'%s') - $START) / 60) min. \
  and $(expr $(expr $(date +'%s') - $START) % 60) sec."
  