#!/usr/bin/env sh

set -e

if ! command -v yay &> /dev/null;
then
  sudo pacman -S --noconfirm --needed git base-devel
  git clone https://aur.archlinux.org/yay.git ~/yay
  cd ~/yay
  makepkg -si
fi


source $(pwd)/install/terminal.sh

stow .
