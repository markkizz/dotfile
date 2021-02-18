if [[ ! -d "$HOME/markkizz/github" ]]
then
  echo "🔴 The directory \"github\" doesn't exist.."
  exit 0
fi

echo "setup github account"
cp ./github ~/markkizz/github/.gitconfig
