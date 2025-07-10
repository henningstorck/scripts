#!/bin/bash

apt-get install ntfs-3g
mkdir /mnt/usb
mount -t ntfs-3g /dev/sdb1 /mnt/usb
