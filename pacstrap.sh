#!/bin/bash

cp -r pkg/ /mnt/var/cache/pacman/ &&
pacstrap /mnt < pkglist-pacstrap.txt &&
genfstab -U /mnt > /mnt/etc/fstab &&
arch-chroot /mnt 

