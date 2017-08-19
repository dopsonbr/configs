#!/bin/bash

# install brew
BREW_EXISTS="$(brew --version | grep -ci "homebrew" )"
if [[ -z $BREW_EXISTS ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

APPS=( 'python3' 'golang' 'Caskroom/cask/java' 'scala' 'sbt' \
  'coreutils' 'findutils' 'tree' 'httpie' 'git' 'Caskroom/cask/shiftit' \
  'kafkacat' 'shellcheck' 'node' 'nginx' \
  'Caskroom/cask/intellij-idea' 'Caskroom/cask/pycharm-ce' 'Caskroom/cask/sublime-text' \
  'neovim/neovim/neovim' 'Caskroom/cask/iterm2' 'maven' 'gradle' \
  'Caskroom/cask/transmission' 'Caskroom/cask/google-chrome' )

for APP in "${APPS[@]}"; do
  brew install $APP
done

ls -s "${HOME}/github/dopsonbr/dotfiles/.gitconfig" "${HOME}/.gitconfig"
