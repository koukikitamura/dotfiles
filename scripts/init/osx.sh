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

# ghq
if is_exists "ghq"; then
  log_info "ghq is already isntalled"
else
  log_info "Install ghq"
  brew install ghq
fi

# tig
if is_exists "tig"; then
  log_info "tig is already isntalled"
else
  log_info "Install tig"
  brew install tig
fi

# direnv
if is_exists "direnv"; then
  log_info "direnv is already isntalled"
else
  log_info "Install direnv"
  curl -sfL https://direnv.net/install.sh | bash
fi

# aws
if is_exists "aws"; then
  log_info "awscli is already isntalled"
else
  log_info "Install awscli"
  brew install awscli
fi

if is_exists "git-lfs"; then
  log_info "git-lfs is already isntalled"
else
  log_info "Install git-lfs"
  brew install git-lfs
fi

if is_exists "tfenv"; then
  log_info "tfenv is already isntalled"
else
  log_info "Install tfenv"
  brew install tfenv
fi

if is_exists "tflint"; then
  log_info "tflint is already isntalled"
else
  log_info "Install tflint"
  brew install tflint
fi

if is_exists "circleci"; then
  log_info "circleci is already isntalled"
else
  log_info "Install circleci"
  brew install circleci
fi

# session manager plugin

# jq
if is_exists "jq"; then
  log_info "jq is already isntalled"
else
  log_info "Install jq"
  brew install jq
fi

# yarn
if is_exists "yarn"; then
  log_info "yarn is already isntalled"
else
  log_info "Install yarn"
  brew install yarn
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

## Desktop application

# docker
if is_exists "docker"; then
  log_info "docker is already isntalled"
else
  log_info "Install docker"
  brew cask install docker
fi
