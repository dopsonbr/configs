
cfLoginNP () {
  cf login \
    -u "${CF_LOGIN_USR}" \
    -p "${CF_LOGIN_PSW}" \
    -a "${CF_API_ENDPOINT}" \
    -o "${CF_ORG}" \
    -s "${CF_SPACE}" \
    --skip-ssl-validation
}

