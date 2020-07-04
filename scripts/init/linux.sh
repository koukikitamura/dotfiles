#!/bin/bash

source scripts/lib/loging.sh

if is_linux; then
  print_logo
  log_fail "Start to install dependencies"
else
  log_fail "Your platform is not Linux"
  exit 1
fi

log_info "Sory, We'are not supoort linux platform"
