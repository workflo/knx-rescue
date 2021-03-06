Download Knoppix DVD image: http://ftp.uni-kl.de/pub/linux/knoppix-dvd/KNOPPIX_V7.7.1DVD-2016-10-22-EN.iso

Create VM with at least 32 GB harddisk. Allow VM to use 2 or more CPUs to speed up remastering.
Boot from downloaded ISO image.

After Knoppix has finished booting up, open Terminal and become root:
```
sudo -s

# Create a primary partition `1`:
fdisk /dev/sda

# Create ext4 file system:
mkfs.ext4 /dev/sda1
```

Copy Knoppix to /media/sda1:
```
wget -q -O - https://raw.githubusercontent.com/workflo/knx-rescue/master/init.sh | bash
```

chroot into new directory:
```
wget -q -O - https://raw.githubusercontent.com/workflo/knx-rescue/master/chroot.sh | bash
chroot /media/sda1/knx/source/KNOPPIX
```

Remove unneccesary packages:
```
wget -q -O - https://raw.githubusercontent.com/workflo/knx-rescue/master/remove.sh | bash
```

Install additional packages:
```
wget -q -O - https://raw.githubusercontent.com/workflo/knx-rescue/master/install.sh | bash
```

Leave chroot: `Ctrl + D`
```
wget -q -O - https://raw.githubusercontent.com/workflo/knx-rescue/master/exit.sh | bash
```

Remaster:
```
wget -q -O - https://raw.githubusercontent.com/workflo/knx-rescue/master/remaster.sh | bash
```
