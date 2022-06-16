#!/usr/bin/env bash

echo "Installing nvim"

if [ ! command -v pip3 && ! command -v python3 ]
then
  echo "Could not find python. please install python3 and pip3"
  exit 1
fi

pip3 install --upgrade setuptools
python3 -m pip install --user --upgrade pynvim
