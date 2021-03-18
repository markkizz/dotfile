#!/usr/bin/env bash

echo "🍰 configuring common CLI environment..."

common_scripts="$(\ls common/*.sh)"

for script in $common_scripts
do
  $script
done

echo "🍰 configuring gitconfig... "

git_configs="$(\ls gitconfig/*.sh)"

for script in $git_configs
do
  $script
done
