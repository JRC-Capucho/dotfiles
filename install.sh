#!/usr/bin/env sh

set -e

sudo pacman -S --needed --noconfirm gum

source $(pwd)/install/chooses.sh

source $(pwd)/install/terminal.sh

folders="cz,git,zsh" 
for folder in $(echo $folders | sed "s/,/ /g"); do
  stow -D $folder
done
stow -D --target=$HOME/.config config
stow -D --target=$HOME/.local local

stow cz
stow git
stow zsh
stow --target=$HOME/.config config
stow --target=$HOME/.local local
stow local
