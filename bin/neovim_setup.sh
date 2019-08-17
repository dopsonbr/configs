#!/bin/bash

DIR="$(cd  "$(dirname $0)"; pwd)"
echo "start neovim setup"

# install deps
pip3 install virtualenv
pip2 install --user --upgrade neovim
pip3 install --user --upgrade neovim
pip3 install jedi


gem install neovim || sudo gem install neovim
npm install -g neovim

# dont reinstall plugins. This script is also used for upgrading
if [ ! -d ${HOME}/.config/dein ] ; then 
  mkdir -p "$HOME/.config/dein"
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > "$HOME/.config/dein/installer.sh"
  sh "$HOME/.config/dein/installer.sh" "$HOME/.config/dein"

  # dot file setup
  mkdir -p "$HOME/.config/nvim"
  ln -s "${DIR}/etc/nvim/init.vim" "$HOME/.config/nvim/init.vim"
fi
echo "end neovim setup"
