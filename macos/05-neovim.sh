#!/usr/bin/env zsh

if ! command -v brew
then
  export PATH=$PATH:~/.homebrew/bin
fi

if command -v nvim
then
  echo " ==> Installing nvim-plug"
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi
