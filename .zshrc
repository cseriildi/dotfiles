export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell" # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
plugins=(git)
source $ZSH/oh-my-zsh.sh

source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh

export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"