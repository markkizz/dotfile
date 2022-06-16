if ! command -v asdf &> /dev/null
then
  echo "<the_command> could not be found"
  git clone https://github.com/kiurchv/asdf.plugin.zsh $HOME/.oh-my-zsh/custom/plugins/asdf
  echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

  export PATH="$PATH:$HOME/.asdf/bin"

  # install node js
  asdf install nodejs latest
  asdf global nodejs latest
else
  "❌ asdf does not exist"
fi