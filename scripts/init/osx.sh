#!/bin/bash

dir=$(cd $(dirname $BASH_SOURCE); pwd)

source scripts/lib/loging.sh

if is_osx; then
  print_logo
  log_pass "Start to install dependencies"
else
  log_fail "Platform is not Mac OS(OSX)"
  exit 1
fi

# Homebrew
if is_exists "brew"; then
  log_info "HomeBrew is already isntalled"
else
  log_info "Install Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

## CLI utility

# peco
if is_exists "peco"; then
  log_info "peco is already isntalled"
else
  log_info "Install peco"
  brew install peco
fi

# direnv
if is_exists "direnv"; then
  log_info "direnv is already isntalled"
else
  log_info "Install direnv"
  curl -sfL https://direnv.net/install.sh | bash
fi

## Programing language

# rbenv
if is_exists "rbenv"; then
  log_info "rbenv is already isntalled"
else
  log_info "Install rbenv"
  brew install rbenv
fi

# golang
if is_exists "go"; then
  log_info "golang is already isntalled"
else
  log_info "Install golang"
  scripts/lib/goinstall.sh
fi

# jEnv
if is_exists "jenv"; then
  log_info "jEnv is already isntalled"
else
  log_info "Install jEnv"
  brew install jEnv
fi
