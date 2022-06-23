#!/usr/bin/env zsh

echo "🔨 ==> Installing oh_my_zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

echo "✅ ==> oh_my_zsh installed\n"

if [[ -f ~/.zshrc.pre-oh-my-zsh ]]
then
    echo "==> editing zshrc config"
    mv ~/.zshrc ~/.zshrc.default.bak
    mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
    echo "end"
fi
source ~/.zshrc

