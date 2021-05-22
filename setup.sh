#!/bin/bash

GN='\033[0;31m'
YW='\033[0;33m'
RD='\033[0;32m'
NC='\033[0;0m'

BREW1=( git zsh tmux vim neovim )
BREW2=( aws-cdk k9s most bat shellcheck tflint tfenv yamllint nvm )
CASK=( libreoffice iterm2 postman keka brave-browser firefox virtualbox pritunl \
       spotify spectacle kap google-cloud-sdk slack bitwarden docker )

homebrew()
{
  if command -v brew > /dev/null;
  then
    echo -e "${YW}[WARN]${NC} brew is already installed."
  else
    echo -e "${GN}[INFO]${NC} Install Homebrew${i}"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
}

brewinstall1()
{
  for i in "${BREW1[@]}"
  do
    if command -v "$i" > /dev/null;
    then
      echo -e "${YW}[WARN]${NC} ${i} is already installed."
    else
      echo -e "${GN}[INFO]${NC} Install ${i}"
      brew install "$i"
    fi
  done
}


brewinstall2()
{
  for i in "${BREW2[@]}"
  do
    if command -v "$i" > /dev/null;
    then
      echo -e "${YW}[WARN]${NC} ${i} is already installed."
    else
      echo -e "${GN}[INFO]${NC} Install ${i}"
      brew install "$i"
    fi
  done
}

brewcask()
{
  for i in "${CASK[@]}"
  do
    if command -v "$i" > /dev/null;
    then
      echo -e "${YW}[WARN]${NC} ${i} is already installed."
    else
      echo -e "${GN}[INFO]${NC} Install ${i}"
      brew install --cask "$i"
    fi
  done
}

brewupdate()
{
  brew update && brew upgrade && brew cleanup
}

if [[ "$OSTYPE" == "darwin"* ]]; then
  homebrew

  #brewupdate
  brewinstall1
  #brewinstall2
  #brewcask
  #brewupdate
fi
