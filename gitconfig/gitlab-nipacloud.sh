#if [[ ! -d "$HOME/markkizz/NCP" ]]
#then
#  echo "🔴 The directory \"NCP\" doesn't exist.."
#  exit 0
#fi

export DIR_NAME="$PWD/gitconfig"

echo "setup github account"
mkdir -p $HOME/markkizz/NCP
cp $DIR_NAME/github ~/markkizz/NCP/.gitconfig
