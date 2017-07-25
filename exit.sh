#! /bin/sh
# krhowto_3
# Path to partition you will work on
PFAD="/media/sda1"
for i in dev/pts proc sys dev tmp; do
  umount $PFAD/knx/source/KNOPPIX/$i
done
sed -i '2,$d' $PFAD/knx/source/KNOPPIX/etc/resolv.conf
