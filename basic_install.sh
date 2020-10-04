# update and upgrade the system
sudo apt update && sudo apt upgrade

# install pip
sudo apt install -y python3-pip

# Install and configure powerline-shell
pip3 install powerline-shell
cp -r ./.config/powerline-shell ~/.config

# Install vscode
sudo snap install --classic code

# Make bash case-insensitive
cp ./dotfiles/.inputrc ~/.inputrc
