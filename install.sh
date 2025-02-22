#!/usr/bin/env sh

set -e

sudo pacman -S --needed --noconfirm gum

source $(pwd)/install/terminal.sh

stow .
