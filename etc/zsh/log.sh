log::_log() {
  local color="$1"
  local sep="$2"
  local msg="$3"

  local dt
  dt="$(date +'%Y-%m-%dT%H:%M:%S%z')"

  local template='[%s] %s %s\n'

  if [[ -t 1 ]]; then
    template="\\e[${color}m${template}\\e[0m"
  fi

  # shellcheck disable=SC2059
  # disabled because there is not a clean way to refactor out the common logic
  # and the color codes
  printf "${template}" "${dt}" "${sep}" "${msg}"
}

log::debug() {
  if [[ ${DEBUG_CI_SCRIPT} = true ]]; then
    local msg="$*"

    log::_log 96 '???' "${msg}"
  fi
}

log::info() {
  local msg="$*"

  log::_log 34 '>>>' "${msg}"
}

log::error() {
  local msg="$*"

  log::_log 91 '!!!' "${msg}" >&2
}

log::warning() {
  local msg="$*"

  log::_log 33 '@@@' "${msg}"
}
