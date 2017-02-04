#!/bin/bash

echo "begin setting up"

# brew install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install python3
brew install neovim/neovim/neovim
brew install Caskroom/cask/shiftit
brew install golang

# install python stuff
pip3 install virtualenv
pip3 install --user --upgrade neovim
pip3 install jedi
mkdir ~/.config/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.config/dein/installer.sh
sh ~/.config/dein/installer.sh

# setup font
tar -xzf source-code-pro-2.030R-ro-1.050R-it.tar.gz
cp source-code-pro-2.030R-ro-1.050R-it/TTF/*.ttf /Library/Fonts/

# install git pair
cd /usr/local/bin && curl -L http://github.com/pivotal/git_scripts/tarball/master | gunzip | tar xvf - --strip=2

# dot file setup
mkdir ~/.config
ln -s ~/github/dopsonbr/configs/.vimrc ~/.vimrc
mkdir ~/.config/nvim
#ln -s ~/.vim ~/.config/nvim
ln -s ~/github.com/dopsonbr/configs/.vimrc ~/.config/nvim/init.vim

# setup zsh
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "set -o vi" >> ~/.zshrc
echo "alias nv=nvim" >> ~/.zshrc
# setup iterm profile
