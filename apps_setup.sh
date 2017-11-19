#!/bin/bash

# install brew
BREW_EXISTS="$(brew --version | grep -ci "homebrew" )"
if [[ -z $BREW_EXISTS ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

APPS=( 'bash' \
    'coreutils --with-default-names' \
    'findutils --with-default-names' \
    'fzf' \
    'git' \
    'golang' \
    'gradle' \
    'httpie' \
    'kafkacat' \
    'maven' \
    'node' \
    'nginx' \
    'python3' \
    'sbt' \
    'scala' \
    'shellcheck' \
    'the_silver_searcher' \
    'tree' \
    'zsh-syntax-highlighting' \
    'Caskroom/cask/google-chrome' \
    'Caskroom/cask/intellij-idea' \
    'Caskroom/cask/iterm2' \
    'Caskroom/cask/java' \
    'neovim/neovim/neovim' \
    'Caskroom/cask/shiftit' \
    'Caskroom/cask/pycharm-ce' \
    'Caskroom/cask/sublime-text' \
    'Caskroom/cask/transmission' \
    'caskroom/cask/insomnia' )

for APP in "${APPS[@]}"; do
  brew install $APP
done

