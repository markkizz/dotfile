#!/usr/bin/env bash

# HACK: add asdf to PATH!
export PATH="$PATH:$HOME/.asdf/bin"

if ! command -v asdf &> /dev/null
then
  echo "🔴 asdf not found!"
  exit 0
fi

if command -v node &> /dev/null
then
  echo "👍 node is already installed."
  exit 0
fi

if [ `uname` == Darwin ]
then
  export SDKROOT="$(xcrun --sdk macosx --show-sdk-path)"
fi

echo "🍰 installing asdf modules..."

asdf install

echo "🍰 setup yarn, GO \$PATH"
local yarn_path="$(yarn global bin)"
local go_path="$(go env GOPATH)"
export RUNTIME_PATH="export PATH=\"\$PATH:$yarn_path:$go_path\""

if [[ -f ~/.zshrc ]]
then
  echo $RUNTIME_PATH >> ~/.zshrc
  source ~/.zshrc
else
  echo $RUNTIME_PATH >> ~/.bashrc
fi

echo "✅ asdf modules are installed!"

# Import Node.js team's OpenPGP keys to main keyring
# bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

