# HACK: add asdf to PATH!
export PATH="$PATH:$HOME/.asdf/bin"

if command -v node &> /dev/null
then
  echo "👍 node is already installed."
  exit 0
fi

export NPM_BIN="$HOME/.asdf/shims/npm"
echo "instal"
if command -v $NPM_BIN &> /dev/null
then
  echo "🍰 installing yarn"
  $NPM_BIN install -g yarn
fi

echo "+ installing python package manager"
sudo apt-get install python3-pip python-pip -y

if command -v pip3 &> /dev/null
then
  echo "++ installing python dependencies"
  pip3 install --upgrade setuptools
  python3 -m pip install --user --upgrade pynvim
fi

if command -v gem &> /dev/null
then
  echo "++ installing ruby dependencies"
  gem install neovim
fi

echo "✅ asdf modules dependencies are installed!"

#echo "🍰 setup yarn, GO \$PATH"
# local yarn_path="$(yarn global bin)"
# local go_path="$(go env GOPATH)"
# export RUNTIME_PATH="export PATH=\"\$PATH:$yarn_path:$go_path\""

# if [[ -f ~/.zshrc ]]
# then
#   echo $RUNTIME_PATH >> ~/.zshrc
#   source ~/.zshrc
# else
#   echo $RUNTIME_PATH >> ~/.bashrc
# fi