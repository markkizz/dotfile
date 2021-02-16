if [[ ! -d "$HOME/markkizz/NCP" ]]
then
  echo "🔴 The directory \"NCP\" doesn't exist.."
  exit 0
fi

echo "setup github account"
cp ./github ~/markkizz/NCP/.gitconfig
