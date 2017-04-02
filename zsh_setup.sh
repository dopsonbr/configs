#!/bin/bash

echo "start zsh setup"

# setup zsh
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#echo "set -o vi" >> ~/.zshrc
echo "alias nv=nvim" >> ~/.zshrc

echo "end zsh setup"
