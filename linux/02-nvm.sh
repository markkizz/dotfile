#!/usr/bin/env bash

echo "Install node js using nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

if nvm ; then
  nvm install node
  nvm install 10.16
  nvm use node
else
  RED='\033[0;31m'
  echo "${RED}*****[Error]: nvm installation fail.*****"
fi
