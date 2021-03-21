#!/usr/bin/env bash
# Run linux setup scripts

if [ `uname` = Darwin ]
then
  echo "⚠️ Detecting macOS. Skipping linux configuration."
  exit 0
fi

echo "🍰 configuring linux installation..."

linux_scripts="$(\ls linux/*.sh)"
linux_deps_scripts="$(\ls linux/**/*.sh)"

for script in $linux_scripts $linux_deps_scripts
do
  $script
  #echo "$script"
done

echo "✅ All linux scripts are installed!"

# automatically setup common CLI environment with scripts.
./setup-common.sh
