#!/bin/bash

# may not work correctly as a script

sudo apt update

# install deps
sudo apt install -y git make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev python3-dev

# install zsh
sudo apt install -y zsh
chsh -s /usr/bin/zsh root # change root to your username
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshenv
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshenv
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshenv

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshenv

pyenv install 3.7.0
pyenv virtualenv 3.7.0 global3.7
pyenv global global3.7

# i3 environment
sudo apt install -y i3 py3status rofi thunar feh scrot blueman-applet lxappearance pavucontrol gsimplecal arandr

#
# There is a moment to logout and login again with i3
# 

# other must have
sudo apt install -y htop okular openvpn network-manager-openvpn-gnome tree
sudo apt install -y redshift redshift-gtk copyq shutter kazam cheese clementine vlc
pip install thefuck

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

sudo add-apt-repository ppa:micahflee/ppa
sudo apt update
sudo apt install -y onionshare

sudo add-apt-repository ppa:keepassx/ppa
sudo apt update
sudo apt install -y keepassx

sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim

# install snaps
snap install tldr
snap install qalculate


# apply config
cp ./i3/config ~/.config/i3/config
cp ./i3/lock.sh ~/.config/i3/lock.sh
cp ./bin/wallpaper.png ~/.config/i3/wallpaper.png
cp -r ./i3status/ ~/.config/i3status/
cp ./rofi/config.rasi ~/.config/rofi/config.rasi 
cp ./.zshrc ~/.zshrc
sudo cp ./bin/calc ./bin/*.sh /usr/loca/bin/
