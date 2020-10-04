# update and upgrade the system
sudo apt update && sudo apt upgrade

# install pip
sudo apt install python-pip

# Install and configure powerline-shell
pip3 install powerline-shell
cp -r ./.config/powerline-shell ~/.config
