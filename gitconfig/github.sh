#if [[ ! -d "$HOME/markkizz/github" ]]
#then
#  echo "🔴 The directory \"github\" doesn't exist.."
#  exit 0
#fi

export DIR_NAME="$PWD/gitconfig"

echo "setup github account"
mkdir -p $HOME/markkizz/github
cp $DIR_NAME/github ~/markkizz/github/.gitconfig
