export LC_ALL=en_US.UTF-8
export ZSH="$HOME/.zsh/oh-my-zsh"
export ZSH_THEME=""
export ZSH_CUSTOM="$HOME/.zsh"
export NVM_DIR="$HOME/.nvm"

plugins=(git sudo virtualenv ruby rails bundler)

# Oh my ZSH
source $ZSH/oh-my-zsh.sh

# Pure
autoload -U promptinit; promptinit
prompt pure

# Virtual environments
eval "$(rbenv init -)"
. "$(brew --prefix)/opt/nvm/nvm.sh"
. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

# Go
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix)/opt/go/libexec"
export GOPRIVATE=github.com/enderian/*
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Anaconda
export PATH=$HOME/anaconda3/bin:$PATH

# FZF
export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Other scripts and sources
export PATH=$HOME/.scripts:$PATH
[ -f ~/.skroutz.zsh ] && source ~/.skroutz.zsh
