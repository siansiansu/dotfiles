#!/bin/bash

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

