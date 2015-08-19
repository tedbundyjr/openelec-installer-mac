#!/bin/sh
diskutil list
diskutil unmountDisk /dev/disk3
sudo dd if=/dev/zero of=/dev/rdisk3 bs=1024 count=1
pv -tpreb OpenELEC-RPi2.arm-5.0.8.img | sudo dd of=/dev/rdisk3 bs=4096 conv=notrunc,noerror