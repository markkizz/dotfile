unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [[ $machine == *"UNKNOWN"* ]]; then
  echo "Unknown operation system. Please try again later."
  exit 1
fi

## install essential packages ##
echo "Step: Install essential packages. Please stay focus in your terminal."
if [[ $machine == *"Mac"* ]]; then
  echo "Essential: Install Homebrew..."
  mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
fi

if [[ $machine == *"Linux"* ]]; then
  echo "Essential: Install build-essential..."
  sudo apt-get update
  sudo apt-get install build-essential -y
fi
echo "Done Essential!"
################################


echo "Step: Install fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#Install oh my zsh
echo "Step: Installing oh_my_zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Step: Install zsh theme"
if [[ $machine == *"Mac"* ]]; then
  brew install romkatv/powerlevel10k/powerlevel10k
  echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
else
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

echo "Step: Install node js using nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

echo "Step: Copying .zshrc"
cp .zshrc ~/.zshrc

mkdir ~/opt
mkdir ~/opt/bin
cp ./bin/* ~/opt/bin

mkdri .zfuncs
cp ./zfuncs/* ~/.zfuncs

echo "Step: Sourcing zsh"
source ~/.zshrc

echo "Done!!"
