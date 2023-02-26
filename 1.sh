#!/bin/bash
#

./pacstrap.sh &&
./user-setup.sh &&
./install-pkgs-native.sh &&
./enable-services.sh &&
./switch-ralldi &&
./aur-setup.sh &&
./install-pkgs-aur.sh &&
./install-lvim.sh &&
./chezmoi.sh &&
