#!/bin/bash

# may not work correctly as a script

sudo apt update

# install deps
sudo apt install -y git make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev python3-dev

# install zsh
sudo apt install -y zsh
chsh -s /usr/bin/zsh root # change root to your username
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# i3 environment
sudo apt install -y i3 py3status rofi thunar feh scrot blueman-applet lxappearance pavucontrol gsimplecal arandr

# apply config
cp ./i3/config ~/.config/i3/config
cp ./i3/lock.sh ~/.config/i3/lock.sh
cp ./bin/wallpaper.png ~/.config/i3/wallpaper.png
cp -r ./i3status/ ~/.config/i3status/
mkdir ~/.config/rofi/
cp ./rofi/config.rasi ~/.config/rofi/config.rasi 
cp ./.zshrc ~/.zshrc
sudo cp ./bin/calc ./bin/*.sh /usr/loca/bin/

#
# There is a moment to logout and login again with i3
# 
