#!/usr/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# langs
brew install python3
brew install golang
brew install Caskroom/cask/java
brew install scala
brew install sbt

# utils
brew install coreutils
brew install findutils
# update path 
#PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
#MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
#MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

brew install tree
brew install httpie
brew install git
brew install Caskroom/cask/shiftit
brew install docker
brew install kafkacat
brew install shellcheck 

# runtimes
brew install node
brew install nginx

# editors
brew install Caskroom/cask/intellij-idea
brew install Caskroom/cask/pycharm-ce
brew install Caskroom/cask/sublime-text
brew install neovim/neovim/neovim

# other
brew install Caskroom/cask/iterm2
brew install maven
brew install gradle
brew install Caskroom/cask/transmission
brew install Caskroom/cask/google-chrome
