#!/bin/bash

echo "start zsh setup"

# setup zsh
# install oh-my-zsh
if [[ -d ${HOME}/.oh-my-zsh ]]; then
  echo "oh my zsh is already installed"
else
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

ln -fs "${HOME}/github/dopsonbr/dotfiles/etc/zsh/zshrc" "${HOME}/.zshrc"
ln -fs "${HOME}/github/dopsonbr/dotfiles/etc/tmux/tmux.conf" "${HOME}/.tmux.conf"

echo "end zsh setup"
