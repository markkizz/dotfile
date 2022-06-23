#!/usr/bin/env zsh

if ! command -v brew
then
  export PATH=$PATH:~/.homebrew/bin
fi

# if ! command -v asdf &> /dev/null
# then
  # git clone https://github.com/kiurchv/asdf.plugin.zsh $HOME/.oh-my-zsh/custom/plugins/asdf


  # echo "export PATH="$PATH:$HOME/.asdf/bin" >> ~/.zshrc
if command -v asdf
then
  echo "\n🔨 ==> install asdf plugin"
  # echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
  source ~/.zshrc
  # install node js
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

  asdf install nodejs   14.16.0
  asdf install nodejs   16.14.0

  asdf global nodejs 14.16.0
  echo "✅ ==> asdf installed!\n"
else
 echo "❌ ==> asdf does not exist"
fi
