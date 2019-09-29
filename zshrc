export ZSH="/Users/alexsu/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
export TERM="xterm-256color"

plugins=(git docker)

source $ZSH/oh-my-zsh.sh

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

# Alias
alias rm="rm -iv"
alias countryroad="cd ~/"

# Setup Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setup Java Home
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alexsu/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alexsu/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alexsu/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alexsu/google-cloud-sdk/completion.zsh.inc'; fi
