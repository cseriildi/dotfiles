if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell" # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
plugins=(git)
source $ZSH/oh-my-zsh.sh

source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh

#apple
if [[ "$(uname)" == "Darwin" ]]; then 
	export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
	export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
	export PATH="/opt/homebrew/opt/ncurses/bin:$PATH"
	export LDFLAGS="-L/opt/homebrew/opt/ncurses/lib"
	export CPPFLAGS="-I/opt/homebrew/opt/ncurses/include"
    
#linux
elif [[ "$(uname)" == "Linux" ]]; then
	export PATH=/home/icseri/.local/funcheck/host:$PATH
	alias 42free='bash /home/icseri/.scripts/42free.sh'
	export HOME_MAX_SIZE=5
	export SGOINFRE_MAX_SIZE=30
	export SGOINFRE='/sgoinfre/icseri'
	export PATH=/sgoinfre/$USER/rust/bin:$PATH
	export CARGO_HOME=/sgoinfre/$USER/rust
	export RUSTUP_HOME=/sgoinfre/$USER/.rustup
	export PATH=$HOME/.brew/bin:$PATH
   
fi

