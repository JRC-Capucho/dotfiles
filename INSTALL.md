# install packages

```bash
tmux \
neovim \
lazygit \
curl \
wget \
fkill \
zsh \
lolcat \
neofetch \
task \
ranger \
eza \
fzf \
alacritty \
bluez \
blueman \
bat \
betterlockscreen \
btop \
glances \
postman-bin \
visual-studio-code-bin \
fd \
ripgrep \
asdf-vm \
openssh \
docker \
docker-compose \
tldr \
mattermost \
tree \
git \
tig \
cmus \
stow \ 
```
# git clones

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -sS https://starship.rs/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```


# Actives
```bash
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
```
