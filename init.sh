#!/bin/bash -e

PFAD="/media/sda1"

mount | grep $PFAD || mount $PFAD

START=$(date +'%s')
# Disable screensaver
xscreensaver-command -exit
# One sub-directory will be used for the Master-CD
mkdir -p $PFAD/knx/master
cd $PFAD/knx
# You will need a swapfile
dd if=/dev/zero of=swapfile bs=1M count=500
mkswap swapfile ; swapon swapfile
# Make a sub-directory for the source
mkdir -p $PFAD/knx/source/KNOPPIX
echo "Copy the KNOPPIX files to your source directory."
echo "This will take a long time!"
cp -rp /KNOPPIX/* $PFAD/knx/source/KNOPPIX
# Additionally, copy the files to build the ISO later
rsync -aH --exclude="KNOPPIX/KNOPPIX*" /mnt-system/* $PFAD/knx/master
# gunzip inital RAM-disk
mkdir -p $PFAD/knx/minirt/minirtdir
cp $PFAD/knx/master/boot/isolinux/minirt.gz $PFAD/knx/minirt/
cd $PFAD/knx/minirt/
gunzip minirt.gz
cd minirtdir
cpio -imd --no-absolute-filenames < ../minirt
# Enable screensaver
su knoppix -c "xscreensaver -nosplash &"
echo -e "\nFinished! Used time: $(expr $(expr $(date +'%s') - $START) / 60) min. \
  and $(expr $(expr $(date +'%s') - $START) % 60) sec."
  