#!/bin/bash

cp ./i3/config ~/.config/i3/config
cp ./i3/lock.sh ~/.config/i3/lock.sh
cp ./bin/wallpaper.png ~/.config/i3/wallpaper.png
cp -r ./i3status/ ~/.config/i3status/
mkdir ~/.config/rofi/
cp ./rofi/config.rasi ~/.config/rofi/config.rasi 
cp ./zsh/.zshrc ~/.zshrc
cp ./zsh/alias.zsh $ZSH/custom/
sudo cp ./bin/calc ./bin/*.sh /usr/local/bin/

sudo chown root:root /usr/local/bin/light.sh
sudo chmod g+s /usr/local/bin/light.sh