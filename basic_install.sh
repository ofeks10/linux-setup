# update and upgrade the system
sudo apt update && sudo apt upgrade

# install pip
sudo apt install -y python3-pip

# Install and configure powerline-shell
pip3 install powerline-shell
cp -r ./.config/powerline-shell ~/.config
sudo apt install -y fonts-powerline
echo "Don't forget to update your terminal font"

# Install vscode
sudo snap install --classic code

# Make bash case-insensitive
cp ./dotfiles/.inputrc ~/.inputrc

# Web dev stuff
# install nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
