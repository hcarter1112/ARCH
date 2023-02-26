#!/bin/bash

ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime &&
cp locale.gen /etc/ &&
locale-gen &&
hwclock -w &&
echo "LANG=en_US.UTF-8" > /etc/locale.conf &&
echo "Please enter a hostname: " &&
read $hostname &&
echo "$hostname" > /etc/hostname &&
passwd &&
cd /etc/skel &&
mkdir Downloads Documents Videos Pictures .config .gitstuff &&
cd ~ &&
useradd -m -G wheel ralldi &&
echo "User ralldi added..."
echo "please add a password"
passwd ralldi &&
cp sudoers /etc/ &&
cp mkinitcpio.conf /etc/ &&
cp grub /etc/default/ &&
mkinitcpio -P &&
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=ARX &&
grub-mkconfig -o /boot/grub/grub.cfg




