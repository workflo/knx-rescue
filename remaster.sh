#! /bin/sh
# krhowto_4
# Path to partition you will work on
PFAD="/media/sda1"
START=$(date +'%s')
# Disable screensaver
xscreensaver-command -exit
# Build new inital RAM-disk
cd $PFAD/knx/minirt/minirtdir/
find . | cpio -oH newc | gzip -9 > ../minirt.gz
cp $PFAD/knx/minirt/minirt.gz $PFAD/knx/master/boot/isolinux/
# Make the big compressed filesystem KNOPPIX
genisoimage -input-charset ISO-8859-15 -R -l -D -V KNOPPIX_FS -quiet \
  -no-split-symlink-components -no-split-symlink-fields \
  -hide-rr-moved -cache-inodes $PFAD/knx/source/KNOPPIX \
  | /usr/bin/create_compressed_fs -q -B 65536 -t 8 -L 9 \
  -f $PFAD/knx/isotemp - $PFAD/knx/master/KNOPPIX/KNOPPIX
# Update the file hashes used by the "testcd" boot option
cd $PFAD/knx/master ; find -type f -not -name \
  sha1sums -not -name boot.cat -not \
  -name isolinux.bin -exec sha1sum '{}' \; > KNOPPIX/sha1sums
# Create new Knoppix ISO
genisoimage -l -r -J -V "KNOPPIX" \
  -b boot/isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 \
  -boot-info-table -c boot/isolinux/boot.cat \
  -o $PFAD/knx/remasterd.iso $PFAD/knx/master
# Enable screensaver
su knoppix -c "xscreensaver -nosplash &"
echo -e "\nFinished! Used time: $(expr $(expr $(date +'%s') - $START) / 60) min. \
  and $(expr $(expr $(date +'%s') - $START) % 60) sec. \
  \n\nThe new ISO is stored in '$PFAD/knx/remastered.iso' "
