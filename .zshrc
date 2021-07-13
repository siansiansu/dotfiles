# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/alexsu/.oh-my-zsh"

ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

export TERM="xterm-256color"

plugins=(git docker gcloud)

source $ZSH/oh-my-zsh.sh
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin
export PATH="/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH"
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc' ]; then
    . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc';
fi

# Setup Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Setup Locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Alias for general purpose
alias rm="rm -iv"
alias countryroad="cd ~/"
alias sed="gsed"
alias vim="nvim"
alias back="git reset --soft HEAD~1"

# Alias for docker
alias dat='docker attach'
alias dbu='docker build'
alias dco='docker commit'
alias ddi='docker diff'
alias dde='docker export'
alias dhi='docker history'
alias dim='docker images'
alias dimp='docker import'
alias din='docker info'
alias dins='docker insert'
alias dinsp='docker inspect'
alias dk='docker kill'
alias dlogin='docker login'
alias dlogs='docker logs'
alias dport='docker port'
alias dtop='docker top'
alias dps='docker ps'
alias dpull='docker pull'
alias dpush='docker push'
alias dre='docker restart'
alias drm='docker rm'
alias drmi='docker rmi'
alias drun='docker run'
alias dse='docker search'
alias dstart='docker start'
alias dstop='docker stop'
alias dtag='docker tag'
alias dversion='docker version'
alias dwait='docker wait'
alias killnoneimage="docker rmi -f \$(docker images -f dangling=true -aq)"
alias killnoneps="docker rm -f \$(docker ps -aq)"
alias dc="docker-compose"

alias tmux="TERM=screen-256color-bce tmux"
alias tf="terraform"
alias tfplanout="terraform plan -no-color > output.txt"
alias gbc="git branch | cat"

alias tfapply_auto="terraform apply -auto-approve"
alias tfapply="terraform apply"
alias ls="lsd"


alias k=kubectl
complete -F __start_kubectl k

# Setup Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GO111MODULE="auto"


export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export PAGER="less"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/media17.config
