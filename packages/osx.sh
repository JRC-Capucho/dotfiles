#!/usr/bin/env sh

if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
fi

tools=(tmux docker alacritty asdf stow fzf fd ripgrep zoxide ranger unzip git gh bat tldr httpie wget curl)
for tool in "${tools[@]}"; do
    brew install "${tool}"
done

fonts=( font-jetbrains-mono font-aurulent-sans-mono-nerd-font font-code-new-roman-nerd-font font-comic-shanns-mono-nerd-font font-commit-mono-nerd-font font-droid-sans-mono-nerd-font font-fira-mono-nerd-font font-geist-mono-nerd-font font-hasklug-nerd-font font-hasklig font-hurmit-nerd-font font-monaspace-nerd-font font-open-dyslexic-nerd-font font-overpass-nerd-font font-0xproto-nerd-font font-3270-nerd-font font-agave-nerd-font font-anonymice-nerd-font font-arimo-nerd-font font-aurulent-sans-mono-nerd-font font-bigblue-terminal-nerd-font font-bitstream-vera-sans-mono-nerd-font font-blex-mono-nerd-font font-caskaydia-cove-nerd-font font-caskaydia-mono-nerd-font font-cousine-nerd-font font-d2coding-nerd-font font-daddy-time-mono-nerd-font font-envy-code-r-nerd-font font-dejavu-sans-mono-nerd-font font-fantasque-sans-mono-nerd-font font-fira-code-nerd-font font-go-mono-nerd-font font-gohufont-nerd-font font-hack-nerd-font font-heavy-data-nerd-font font-im-writing-nerd-font font-inconsolata-go-nerd-font font-inconsolata-lgc-nerd-font font-inconsolata-nerd-font font-intone-mono-nerd-font font-iosevka-nerd-font   font-lekton-nerd-font font-liberation-nerd-font font-lilex-nerd-font font-martian-mono-nerd-font font-meslo-lg-nerd-font font-meslo-lg-nerd-font font-monocraft-nerd-font font-monofur-nerd-font font-monoid-nerd-font font-mononoki-nerd-font font-mplus-nerd-font font-noto-nerd-font font-profont-nerd-font font-proggy-clean-tt-font-nerd font-recursive-mono-nerd-font font-roboto-mono-nerd-font font-sauce-code-pro-nerd-font font-shure-tech-mono-nerd-font font-space-mono-nerd-font font-symbols-only-nerd-font font-terminess-ttf-nerd-font font-tinos-nerd-font font-ubuntu-mono-nerd-font font-ubuntu-nerd-font font-ubuntu-sans-nerd-font font-victorm-mono-nerd-font font-zed-mono-nerd-font)
for font in "${fonts[@]}"; do
    brew install --cask "${font}"
done

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
