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
