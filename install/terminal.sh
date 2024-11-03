#!/usr/bin/env sh

sudo pacman -Syyuu --noconfirm 
sudo pacman -S curl git unzip --noconfirm

for installer in $(pwd)/install/terminal/*.sh; do source $installer; done

