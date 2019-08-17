#!/usr/bin/env bash

export CF_ZONE='np'
export CF_API_ENDPOINT="api.run-${CF_ZONE}.homedepot.com"
export CF_ORG='orderup-sell'
export CF_SPACE='accepted'

cfLoginNP () {
  cf login \
    -u "${CF_LOGIN_USR}" \
    -p "${CF_LOGIN_PSW}" \
    -a "${CF_API_ENDPOINT}" \
    -o "${CF_ORG}" \
    -s "${CF_SPACE}" \
    --skip-ssl-validation
}

function updateJenkinsfile() {
  ./usom-build-scripts/bin/config/update_service_jenkinsfile \
    && (cd usom-build-scripts && git commit -am "$1" && git push) \
    && git add Jenkinsfile* usom-build-scripts \
    && git commit -m "$1" \
    && git push
}

function usomBuildScripts() {
  git status \
    && (cd usom-build-scripts && git status && git commit -am "$1" && git push) \
    && git add usom-build-scripts \
    && git commit -m "$1" \
    && git push
}
