#!/bin/bash

# other must have
sudo apt install -y htop okular openvpn network-manager-openvpn-gnome tree tig
sudo apt install -y redshift redshift-gtk copyq shutter kazam cheese clementine vlc
snap install tldr
snap install qalculate

# text editors
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim

# other useful
sudo add-apt-repository ppa:micahflee/ppa
sudo apt update
sudo apt install -y onionshare

sudo add-apt-repository ppa:keepassx/ppa
sudo apt update
sudo apt install -y keepassx
