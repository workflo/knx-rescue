Download Knoppix DVD image: http://ftp.uni-kl.de/pub/linux/knoppix-dvd/KNOPPIX_V7.7.1DVD-2016-10-22-EN.iso

Create VM with at least 32 GB harddisk. Allow VM to use 2 or more CPUs to speed up remastering.
Boot from downloaded ISO image.

After Knoppix has finished booting up, open Terminal and become root:
```
sudo -s
```

Copy Knoppix to /media/sda1:
```
wget -O - http://alternate/~florian/knoppix/init.sh | bash
```

chroot into new directory:
```
wget -O - http://alternate/~florian/knoppix/chroot.sh | bash
chroot /media/sda1/knx/source/KNOPPIX
```

Remove unneccesary packages:
```
wget -O - http://alternate/~florian/knoppix/remove.sh | bash
```

Install additional packages:
```
wget -O - http://alternate/~florian/knoppix/install.sh | bash
```

Leave chroot: `Ctrl + D`
```
wget -O - http://alternate/~florian/knoppix/exit.sh | bash
```

Remaster:
```
wget -O - http://alternate/~florian/knoppix/remaster.sh | bash
```
