export LC_ALL=en_US.UTF-8
export ZSH="$HOME/.zsh/oh-my-zsh"
export ZSH_THEME=""
export ZSH_CUSTOM="$HOME/.zsh"
export NVM_DIR="$HOME/.nvm"

plugins=(
    git sudo
    zsh-autosuggestions
    ruby rails bundler
    virtualenv
)

# Shell
eval "$(starship init zsh)"
source $ZSH/oh-my-zsh.sh

# Virtual environments
eval "$(rbenv init -)"
. "$(brew --prefix)/opt/nvm/nvm.sh"
. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
alias jdk=/usr/libexec/java_home

# Go
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix)/opt/go/libexec"
export GOPRIVATE=github.com/enderian/*,github.com/ender.gr/*
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Anaconda
export PATH=$(brew --prefix)/anaconda3/bin:$PATH

# FZF
export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh || true

# Other scripts and sources
export PATH=$HOME/.scripts:$PATH
[ -f ~/.skroutz/shell.zsh ] && source ~/.skroutz/shell.zsh || true
