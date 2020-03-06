export LC_ALL=en_US.UTF-8
export ZSH="$HOME/.zsh/oh-my-zsh"
export ZSH_THEME=""
export ZSH_CUSTOM="$HOME/.zsh"
export NVM_DIR="$HOME/.nvm"

plugins=(git sudo virtualenv ruby rails bundler)

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/zsh-autosuggestions/zsh-autosuggestions.zsh

# Pure
autoload -U promptinit; promptinit
prompt pure

# Virtual environments
eval "$(rbenv init -)"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export GOPRIVATE=github.com/enderian/*
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Anaconda
export PATH=$HOME/anaconda3/bin:$PATH

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/dotfiles.git --work-tree=$HOME'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias restart_sound="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"

# Source other files
export PATH=$PATH:~/.scripts
source ~/.private/skroutz_zshrc &> /dev/null

# FZF
export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
