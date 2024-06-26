#!/usr/bin/env sh

if ! command -v yay $> /dev/null 
then
	pacman -Sy --needed git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
fi

tools=( neovim tmux zsh alacritty docker lazygit asdf-vm stow brave-nightly-bin fzf fd ripgrep ranger zoxide unzip git github-cli curl wget httpie bat tldr picom feh)

yay --noconfirm -S --needed "${tools[@]}"

fonts=(otf-aurulent-nerd	otf-codenewroman-nerd	otf-comicshanns-nerd	otf-commit-mono-nerd	otf-droid-nerd	otf-firamono-nerd	otf-geist-mono-nerd	otf-hasklig-nerd	otf-hermit-nerd	otf-monaspace-nerd	otf-opendyslexic-nerd	otf-overpass-nerd	ttf-0xproto-nerd	ttf-3270-nerd	ttf-agave-nerd	ttf-anonymouspro-nerd	ttf-arimo-nerd	ttf-bigblueterminal-nerd	ttf-bitstream-vera-mono-nerd	ttf-cascadia-code-nerd	ttf-cascadia-mono-nerd	ttf-cousine-nerd	ttf-d2coding-nerd	ttf-daddytime-mono-nerd	ttf-dejavu-nerd	ttf-envycoder-nerd	ttf-fantasque-nerd	ttf-firacode-nerd	ttf-go-nerd	ttf-gohu-nerd	ttf-hack-nerd	ttf-heavydata-nerd	ttf-iawriter-nerd	ttf-ibmplex-mono-nerd	ttf-inconsolata-go-nerd	ttf-inconsolata-lgc-nerd	ttf-inconsolata-nerd	ttf-intone-nerd	ttf-iosevka-nerd	ttf-iosevkaterm-nerd	ttf-iosevkatermslab-nerd	ttf-jetbrains-mono-nerd	ttf-lekton-nerd	ttf-liberation-mono-nerd	ttf-lilex-nerd	ttf-martian-mono-nerd	ttf-meslo-nerd	ttf-monofur-nerd	ttf-monoid-nerd	ttf-mononoki-nerd	ttf-mplus-nerd	ttf-nerd-fonts-symbols	ttf-nerd-fonts-symbols-mono	ttf-noto-nerd	ttf-profont-nerd	ttf-proggyclean-nerd	ttf-recursive-nerd	ttf-roboto-mono-nerd	ttf-sharetech-mono-nerd	ttf-sourcecodepro-nerd	ttf-space-mono-nerd	ttf-terminus-nerd	ttf-tinos-nerd	ttf-ubuntu-mono-nerd	ttf-ubuntu-nerd	ttf-victor-mono-nerd	ttf-zed-mono-nerd )

sudo yay --noconfirm -S --needed "${fonts[@]}"

config_folder="$HOME/.config"

if [ -d "$config_folder/nvim" ]; then
    rm -rf "$HOME/.config/nvim"
    rm -rf "$HOME/.local/share/nvim/"
    rm -rf "$HOME/.local/state/nvim/"
    rm -rf "$HOME/.cache/nvim/"

    git clone https://github.com/JRC-Capucho/Editor ~/dotfiles/.config/nvim
fi

if [ -d "$config_folder/tmux" ]; then
    rm -rf "$HOME/.config/tmux"
fi

if [ -d "$config_folder/alacritty" ]; then
    rm -rf "$HOME/.config/alacritty"
fi


if [ -d "$config_folder/ranger" ]; then
    rm -rf "$HOME/.config/ranger"
fi

if [ -d "$config_folder/i3" ]; then
    rm -rf "$HOME/.config/i3"
fi

(cd "$HOME/dotfiles" && stow . )
