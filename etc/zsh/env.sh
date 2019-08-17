export LANG=en_US.UTF-8
export SHELL=/bin/zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin:${HOME}/.rvm/bin"
export SCALA_HOME='/usr/local/opt/scala/idea'
export SDKMAN_DIR="/Users/bxd5017/.sdkman"