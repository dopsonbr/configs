bail() {
  local msg="$*"

  log::error "${msg}"
  exit 1
}

testAndSource() {
    set -e
    toBeSourced="${1}"
    if [[ -f ${toBeSourced} ]]; then
        # shellcheck disable=SC1090
        source "${1}"
    else
        log::warning "unable to source ${1}"
    fi
    set +e
}

function mkdircd () {
  mkdir -p "$@" \
    && cd "$@" || echo "unable to change to directory"; exit 1
}