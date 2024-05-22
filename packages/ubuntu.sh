#!/usr/bin/env sh


tools=( git curl neovim brave-browser tmux zsh alacritty docker lazygit stow fzf fd-find ripgrep ranger zoxide unzip wget httpie bat tldr picom feh i3)

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:aslatter/ppa


# docker 
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# lazy git
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# Brave 
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# Github cli
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) 
sudo mkdir -p -m 755 /etc/apt/keyrings 
wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \

# Install httpie
curl -SsL https://packages.httpie.io/deb/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/httpie.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/httpie.gpg] https://packages.httpie.io/deb ./" | sudo tee /etc/apt/sources.list.d/httpie.list > /dev/null

sudo apt-get update -y
sudo apt-get install -y "${tools[@]}"
