#!/usr/bin/env zsh

echo "🔨 ==> Installing Homebrew..."
#yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
yes | mkdir ~/.homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ~/.homebrew
echo "export PATH=~/homebrew/bin:$PATH" >> ~/.zshrc
echo "✅ Homebrew installed! \n"
