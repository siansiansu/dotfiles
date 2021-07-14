#!/bin/bash

app="brew"

if [[ "$OSTYPE" != "darwin"* ]]; then
  echo -e "${YW}[WARN]${NC} Does not need to install ${app}."
  return
fi

if command -v "$app" > /dev/null;
then
  echo -e "${GN}[INFO]${NC} ${app} is already installed."
else
  echo -e "${GN}[INFO]${NC} Install ${app}"
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi

app="git"

if command -v "$app" > /dev/null;
then
  echo -e "${GN}[INFO]${NC} ${app} is already installed."
else
  echo -e "${GN}[INFO]${NC} Install ${app}"
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install "$app"
  fi
fi

app="curl"

if command -v "$app" > /dev/null;
then
  echo -e "${GN}[INFO]${NC} ${app} is already installed."
else
  echo -e "${GN}[INFO]${NC} Install ${app}"
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install "$app"
  fi
fi

app=wget

if command -v $app > /dev/null;
then
  echo -e "${GN}[INFO]${NC} ${app} is already installed."
else
  echo -e "${GN}[INFO]${NC} Install ${app}"
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install "$app"
  fi
fi

app=zsh

if command -v $app > /dev/null;
then
  echo -e "${GN}[INFO]${NC} ${app} is already installed."
else
  echo -e "${GN}[INFO]${NC} Install ${app}"
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install "$app"
  fi
fi

app=tmux

if command -v $app > /dev/null;
then
  echo -e "${GN}[INFO]${NC} ${app} is already installed."
else
  echo -e "${GN}[INFO]${NC} Install ${app}"
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install "$app"
  fi
fi

app=pyenv

if command -v $app > /dev/null;
then
  echo -e "${GN}[INFO]${NC} ${app} is already installed."
else
  echo -e "${GN}[INFO]${NC} Install ${app}"
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install "$app"
  fi
fi

app="nvm"
dir="$HOME/.$APP"

if [ -d "$dir" ];
then
  echo -e "${GN}[INFO]${NC} ${app} is already installed."
else
  echo -e "${GN}[INFO]${NC} Install ${app}"
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install "$app"
  fi
fi

app=vim

if command -v $app > /dev/null;
then
  echo -e "${GN}[INFO]${NC} ${app} is already installed."
else
  echo -e "${GN}[INFO]${NC} Install ${app}"
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install "$app"
  fi
fi
