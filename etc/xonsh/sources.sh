if [[ -f ${HOME}/.config/secrets.sh ]]; then 
  source "${HOME}/.config/secrets.sh"
fi

source "${HOME}/github/dopsonbr/dotfiles/thd_defaults.sh"

if [[ -f ${HOME}/.config/secrets.sh ]]; then 
  source "${HOME}/.config/secrets.sh"
fi

source "${HOME}/github/dopsonbr/dotfiles/thd_defaults.sh"

export SCALA_HOME='/usr/local/opt/scala/idea'
if [[ -f "${HOME}/google-cloud-sdk" ]]; then 
  source "${HOME}/google-cloud-sdk/completion.zsh.inc"
  source "${HOME}/google-cloud-sdk/path.zsh.inc"
  export GOOGLE_APPLICATION_CREDENTIALS='Call box-1a7eac808445.json'
fi

export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
