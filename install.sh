#!/bin/bash
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update -y
    sudo apt-get -y install zsh tmux git neovim curl
fi

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir -p ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes
mkdir -p ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cp *.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes

cp .zshrc ~/
cp .tmux.conf ~/

cp -r .config/nvim ~/.config/
cp -r .config/alacritty ~/.config/
