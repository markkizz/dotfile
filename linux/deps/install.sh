#!/usr/bin/env bash

echo "Installing linux dependencies..."

function install_from_package_list() {
  packages="$(awk '! /^ *(#|$)/' $1)"

  xargs -a <(echo $packages) -r -- echo "📦 installing packages:"
  xargs -a <(echo $packages) -r -- sudo apt-get install -y
}

cd "$(dirname "$0")"

# Install packages with apt-get
install_from_package_list "essentials"