#!/usr/bin/env bash

echo "Essential: Install build-essential..."

sudo apt-get update -y
sudo apt-get install build-essential -y

common_scripts="$(\ls linux/deps/*.sh)"

for script in $common_scripts
do
  $script
done
