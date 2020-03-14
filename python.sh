#!/bin/bash


# install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshenv
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshenv
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshenv

source .zshrc
source .zshenv

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshenv

pyenv install 3.8.2
pyenv virtualenv 3.8.2 global3.8
pyenv global global3.8
pip install thefuck

# sudo snap install pycharm-professional --classic
# https://www.jetbrains.com/pycharm/download/other.html
