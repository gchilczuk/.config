#!/bin/bash

apt update

# install zsh
apt install -y zsh
chsh -s /usr/bin/zsh root
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshenv
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshenv
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshenv

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshenv

exec "$SHELL"

apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev

pyenv install 3.7.0
pyenv virtualenv 3.7.0 global3.7
pyenv global global3.7

# i3 environment
apt install -y i3
apt install -y Thunar
apt install -y feh

# other must have
apt install -y htop 
apt install -y redshift redshift-gtk 
apt install -y copyq
apt install -y shutter
apt install -y okular
apt install -y kazam
apt install -y cheese
apt install -y vlc

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt update
apt install -y sublime-text

add-apt-repository ppa:micahflee/ppa
apt update
apt install -y onionshare

apt install -y python3-dev python3-pip
pip install -y thefuck

add-apt-repository ppa:keepassx/ppa
apt update
apt install -y keepassx

apt-add-repository ppa:neovim-ppa/stable
apt update
apt install neovim

# install snaps
snap install tldr
snap install qalculate


# apply config
cp ./i3/config ~/.config/i3/config
cp ./i3/lock.sh ~/.config/i3/lock.sh
cp ./bin/wallpaper.png ~/.config/i3/wallpaper.png
cp ./i3status/ ~/.config/i3status/
cp ./rofi/config.rasi ~/.config/rofi/config.rasi 
cp ./zshrc ~/.zshrc
cp ./bin/calc ./bin/*.sh /usr/loca/bin/
