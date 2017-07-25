Open Terminal and become root:

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
