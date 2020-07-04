#!/bin/bash

DOTPATH=~/.dotfiles
GITHUB_URL=https://github.com/koukikitamura/dotfiles

is_exists() {
  which "$1" >/dev/null 2>&1
  return $?
}

if [ -d "$DOTPATH" ]; then
    echo "($DOTPATH) has been setup."
    exit 1
fi

if is_exists "git"; then
  git clone --recursive "$GITHUB_URL" "$DOTPATH"
else
  echo "git is required"
fi

cd ~/.dotfiles
if [ $? -ne 0 ]; then
  echo "Not found: $DOTPATH"
  exit 1
fi

scripts/init.sh
scripts/deploy.sh
