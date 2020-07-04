DOTPATH=~/.dotfiles

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$DOTPATH/cmd
export BASH_SILENCE_DEPRECATION_WARNING=1

# Aliase
alias c="clear"
alias ll='ls -lG'
alias g="git"
alias d="docker"
alias m="make"
alias d-c="docker-compose"

alias cdp='cd $(ls | peco)'
alias cdgp='cd $(ghq root)/$(ghq list | peco)'
alias hubgp='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

# git completion
source ${DOTPATH}/lib/git-prompt.sh
source ${DOTPATH}/lib/git-completion.bash

# Add git completion to aliases
__git_complete g __git_main
__git_complete gc _git_checkout
__git_complete gm __git_merge
__git_complete gp _git_pull

# show git branch
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[33m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

# rbenv
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"

# editor
export EDITOR=vim

# go
export GOROOT=$HOME/.go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/dev
export PATH=$PATH:$GOPATH/bin

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# android studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# libray under node_modules
export PATH="./node_modules/.bin:$PATH"

# ssh hostname completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# direnv
eval "$(direnv hook bash)"
