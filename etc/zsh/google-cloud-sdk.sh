if [[ -f "${HOME}/google-cloud-sdk" ]]; then
  source "${HOME}/google-cloud-sdk/completion.zsh.inc"
  source "${HOME}/google-cloud-sdk/path.zsh.inc"
  export GOOGLE_APPLICATION_CREDENTIALS='Call box-1a7eac808445.json'
fi