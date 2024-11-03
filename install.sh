#!/usr/bin/env sh

set -e

sudo pacman -S --needed --noconfirm gum

source $(pwd)/install/chooses.sh

source $(pwd)/install/terminal.sh

stow cz
stow git
stow zsh
stow config
stow local
