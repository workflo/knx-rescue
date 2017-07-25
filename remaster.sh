#! /bin/sh

KNOPPIX_PATH="/media/sda1"
ISO_FILE=knx-rescue.iso

START=$(date +'%s')
# Disable screensaver
xscreensaver-command -exit
# Build new inital RAM-disk
cd $KNOPPIX_PATH/knx/minirt/minirtdir/
find . | cpio -oH newc | gzip -9 > ../minirt.gz
cp $KNOPPIX_PATH/knx/minirt/minirt.gz $KNOPPIX_PATH/knx/master/boot/isolinux/
# Make the big compressed filesystem KNOPPIX
genisoimage -input-charset ISO-8859-15 -R -l -D -V KNOPPIX_FS -quiet \
  -no-split-symlink-components -no-split-symlink-fields \
  -hide-rr-moved -cache-inodes $KNOPPIX_PATH/knx/source/KNOPPIX \
  | /usr/bin/create_compressed_fs -q -B 65536 -t 8 -L 9 \
  -f $KNOPPIX_PATH/knx/isotemp - $KNOPPIX_PATH/knx/master/KNOPPIX/KNOPPIX
# Update the file hashes used by the "testcd" boot option
cd $KNOPPIX_PATH/knx/master ; find -type f -not -name \
  sha1sums -not -name boot.cat -not \
  -name isolinux.bin -exec sha1sum '{}' \; > KNOPPIX/sha1sums
# Create new Knoppix ISO
genisoimage -l -r -J -V "KNOPPIX" \
  -b boot/isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 \
  -boot-info-table -c boot/isolinux/boot.cat \
  -o $KNOPPIX_PATH/knx/$ISO_FILE $KNOPPIX_PATH/knx/master
# Enable screensaver
su knoppix -c "xscreensaver -nosplash &"
echo -e "\nFinished! Used time: $(expr $(expr $(date +'%s') - $START) / 60) min. \
  and $(expr $(expr $(date +'%s') - $START) % 60) sec. \
  \n\nThe new ISO is stored in '$KNOPPIX_PATH/knx/$ISO_FILE' "
