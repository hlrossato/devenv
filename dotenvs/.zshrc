# Path to your oh-my-zsh installation.
export ZSH="/Users/higor/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose django)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="code ~/.zshrc"
alias zshplugins="code ~/.oh-my-zsh/plugins/"
alias gitconfig="code ~/.gitconfig"
alias sourcezsh="source ~/.zshrc"

# Follow this tutorial before uncomment the lines above
# https://github.com/creationix/nvm#installation

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/Workspace

eval "$(pyenv init -)"
pyenv virtualenvwrapper_lazy

eval $(thefuck --alias)

# Git Aliases
alias grcb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias grcbcm="git for-each-ref --sort=committerdate refs/heads/ --format='%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) - (%(color:blue)%(authorname)%(color:reset)) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gfco="gfo && gco"
alias gfop="gfo && ggpull"
alias gsw="g switch"
alias grest="g restore"

# Docker Aliases
alias dcpsa="docker ps -a"
alias dcrmc="docker rm $(docker ps -a -q)"
alias dcrmi="docker rmi $(docker images)"
alias dcrmv="docker volume rm $(docker volume ls)"
