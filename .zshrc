export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export PATH=$PATH:/usr/local/go/bin

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source ~/.profile
