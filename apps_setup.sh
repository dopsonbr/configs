#!/bin/bash

# install brew
which brew
r=$?
if [ $r == 0 ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

APPS=( 'bash' \
    'bat' \
    'coreutils --with-default-names' \
    'diff-so-fancy' \
    'findutils --with-default-names' \
    'fish' \
    'fd' \
    'fzf' \
    'git' \
    'golang' \
    'gradle' \
    'httpie' \
    'kafkacat' \
    'lazygit' \
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
    'Caskroom/cask/iterm2' \
    'Caskroom/cask/java' \
    'neovim/neovim/neovim' \
    'Caskroom/cask/shiftit' \
    'caskroom/cask/insomnia' )

for app in "${APPS[@]}"; do
  brew install $app || brew upgrade $app
done

$(brew --prefix)/opt/fzf/install
