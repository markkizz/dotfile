#!/usr/bin/env bash

# HACK: add asdf to PATH!
export PATH="$PATH:$HOME/.asdf/bin"

if ! command -v asdf &> /dev/null
then
  echo "🔴 asdf not found!"
  exit 0
fi

# TODO: setup asdf for macos
#if [ `uname` == Darwin ]
#then
  #export SDKROOT="$(xcrun --sdk macosx --show-sdk-path)"
#fi

echo "🍰 installing asdf modules..."

asdf install



echo " setup asdf \$PATH"
printf "\n" >> ~/.bashrc
echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
source ~/.bashrc


echo "✅ asdf modules are installed!"

# Import Node.js team's OpenPGP keys to main keyring
# bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

