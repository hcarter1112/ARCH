#!/bin/bash

pacstrap /mnt < pkglist-pacstrap.txt &&
genfstab -U /mnt > /mnt/etc/fstab &&
cp -r . /mnt/ &&
arch-chroot /mnt 

