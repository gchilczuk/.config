export ZSH="/home/widelec/.oh-my-zsh"

ZSH_THEME="clean"

plugins=(
  git pyenv
)

source $ZSH/oh-my-zsh.sh

fpath=(~/.zsh/completion $fpath)
eval $(thefuck --alias)
