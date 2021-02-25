#!/usr/bin/env bash

echo "Copying .zshrc"
[[ ! -f ~/.zshrc ]] && ln -s ~/dotfiles/.zshrc ~/.zshrc

echo "Installing zsh..."
if [[ `uname` == 'Darwin' ]]
then
    brew install zsh
else
    sudo apt-get install zsh
fi

echo "Installing oh_my_zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo "Install zsh theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


source ~/.zshrc
