#!/usr/bin/env bash

brew install diff-so-fancy

git config --global core.exludesfile "${HOME}/dopsonbr/dotfiles/global_gitignore"
ls -s "${HOME}/github/dopsonbr/dotfiles/global_gitconfig" "${HOME}/.gitconfig"

if [[ $USER == 'bxd5017' ]]; then
  git config --global user.email "brian_dopson1@homedepot.com"
fi
