#!/usr/bin/env bash

echo "Installing zsh..."
if [[ `uname` == 'Darwin' ]]
then
    brew install zsh
else
    sudo apt-get install zsh
fi

echo "Installing oh_my_zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Install zsh theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Copying .zshrc"
cp .zshrc ~/.zshrc

source ~/.zshrc
