#!/bin/bash

cd /home/ralldi/.gitstuff/ &&
	if [[ ! -d ~/.gitstuff/pikaur-git/ ]]; then
		git clone https://aur.archlinux.org/pikaur-git.git
	fi
cd /home/ralldi/.gitstuff/pikaur-git/ &&
	makepkg -si
