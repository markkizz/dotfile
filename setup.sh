#!/usr/bin/env bash

echo "🍰 bootstrapping system environment setup..."
OS=$(bash ./utils/getos)

if [[ $machine == *"UNKNOWN"* ]]; then
  echo "Unknown operation system. Please try again later."
  exit 1
fi

if [ $OS == *"Mac" ]; then
  ./setup-macos.sh
else
  ./setup-linux.sh
fi

# GREEN='\033[0;32m'
echo "**************** Done!! ****************"
