#!/usr/bin/env sh

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay --noconfirm -S
arandr /
asdf-vm /
base-devel /
bat /
discord /
docker /
docker-compose /
fastfetch /
fd /
feh /
firefox /
fzf /
ghq /
git /
github-cli /
htop /
lxappearance /
materia-gtk-theme /
openssh /
openssl /
papirus-icon-theme /
picom /
pipewire /
pipewire-alsa /
pipewire-audio /
pipewire-jack /
pipewire-pulse /
postgresql-libs /
re2c /
ripgrep /
rofi /
spotify /
sqlite /
steam /
stow /
sudo /
thunar /
tldr /
tmux /
ttf-d2coding-nerd /
ttf-droid /
ttf-font-awesome /
ttf-nerd-fonts-symbols /
ttf-nerd-fonts-symbols-common /
ttf-nerd-fonts-symbols-mono /
ttf-ubuntu-font-family /
unzip /
vim /
whatsapp-nativefier /
whatsapp-nativefier-debug /
yay /
zoxide /
zsh 

stow $HOME/dotfiles/
