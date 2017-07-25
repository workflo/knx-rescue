#! /bin/bash

set -e
KNOPPIX_PATH="/media/sda1"

(mount | grep $KNOPPIX_PATH) || mount $KNOPPIX_PATH

# To use the Internet add your nameserver into the chroot folder
cp /etc/resolv.conf $KNOPPIX_PATH/knx/source/KNOPPIX/etc/resolv.conf
# Allow X-based programs in chroot
[ -e $KNOPPIX_PATH/knx/source/KNOPPIX/home/knoppix/.Xauthority ] \
   && rm $KNOPPIX_PATH/knx/source/KNOPPIX/home/knoppix/.Xauthority
cp /home/knoppix/.Xauthority $KNOPPIX_PATH/knx/source/KNOPPIX/home/knoppix
chown knoppix:knoppix $KNOPPIX_PATH/knx/source/KNOPPIX/home/knoppix/.Xauthority
# prepare enviroment for chroot
mount --bind /dev $KNOPPIX_PATH/knx/source/KNOPPIX/dev
mount -t proc proc $KNOPPIX_PATH/knx/source/KNOPPIX/proc
mount -t sysfs sysfs $KNOPPIX_PATH/knx/source/KNOPPIX/sys
mount --bind /dev/pts $KNOPPIX_PATH/knx/source/KNOPPIX/dev/pts
mount --bind /tmp $KNOPPIX_PATH/knx/source/KNOPPIX/tmp

echo ""
echo "Now: chroot /media/sda1/knx/source/KNOPPIX"
echo ""
