#!/bin/bash

echo "start neovim setup"

# install deps
pip3 install virtualenv
pip3 install --user --upgrade neovim
pip3 install jedi
mkdir -p "$HOME/.config/dein"
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > "$HOME/.config/dein/installer.sh"
sh "$HOME/.config/dein/installer.sh" "$HOME/.config/dein"

# dot file setup
mkdir -p "$HOME/.config/nvim"
ln -s "$HOME/github/dopsonbr/configs/.vimrc" "$HOME/.config/nvim/init.vim"
#ln -s ~/github/dopsonbr/configs/.vimrc ~/.vimrc
#ln -s ~/.vim ~/.config/nvim

echo "end neovim setup"
