#!/bin/bash

# update and upgrade the system
sudo apt update && sudo apt upgrade

# install pip
sudo apt install -y python3-pip

# Install and configure powerline-shell
pip3 install powerline-shell
cp -r ./.config/powerline-shell ~/.config
apt install -y fonts-powerline
echo "Don't forget to update your terminal font"

# install bat and exa
apt install -y bat exa

# Install vscode and extensions
snap install --classic code
while read line; do code --install-extension "$line";done < ./vscode/extensions.txt
cp ./vscode/settings.json ~/.config/Code/User/
cp ./vscode/keybindings.json ~/.config/Code/User/

# Web dev stuff
# install nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Install pnpm
wget -qO- https://get.pnpm.io/install.sh | sh -

DOTFILES=(.bashrc .bash_aliases .gitconfig .inputrc .zshrc .p10k.zsh .fzf.zsh)

for dotfile in $(echo ${DOTFILES[*]});
do
    rm ~/$(echo $dotfile)
    ln -s `pwd`/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done

#nvm install node
#npm install -g lite-server eslint
