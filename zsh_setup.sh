#!/bin/bash

echo "start zsh setup"

# setup zsh
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

$(brew --prefix)/opt/fzf/install

ln -s "${HOME}/github/dopsonbr/dotfiles/.zshrc" "${HOME}/.zshrc"

echo "end zsh setup"
