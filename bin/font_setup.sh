#!/bin/bash

DIR="$(cd "$(dirname "$0")"; pwd)"
echo "start font setup"

if [[ "$(find /Library/Fonts -name "sourcode*" | wc -l)" -lt 1 ]]; then
  tar -xzf "${DIR}/source-code-pro-2.030R-ro-1.050R-it.tar.gz"
  cp "${DIR}/source-code-pro-2.030R-ro-1.050R-it/TTF/*.ttf" /Library/Fonts/
else
  echo "Font source code pro is already installed"
fi

if [[ "$(find /Library/Fonts -name "FiraCode*" | wc -l)" -lt 1 ]]; then
  unzip "${DIR}/FiraCode_1.204.zip" -d FiraCode
  cp "${DIR}/FiraCode/ttf/*.ttf" /Library/Fonts
fi
echo "end font setup"
