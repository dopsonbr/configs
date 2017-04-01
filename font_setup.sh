#!/bin/bash

echo "start font setup"

# setup font
if [[ "$(ls /Library/Fonts | grep -ic sourcecodepro)" -lt 1 ]]; then
  tar -xzf source-code-pro-2.030R-ro-1.050R-it.tar.gz
  cp source-code-pro-2.030R-ro-1.050R-it/TTF/*.ttf /Library/Fonts/
else
  echo "Font source code pro is already installed"
fi
echo "end font setup"
