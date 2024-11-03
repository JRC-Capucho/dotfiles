yay --noconfirm --needed -S neovim

if [[ ! -d ~/.config/nvim ]];
then
  git clone https://github.com/JRC-Capucho/Editor.git ~/.config/nvim 
  rm -rf ~/.config/nvim/.git
fi
