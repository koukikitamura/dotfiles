#!/bin/bash

source scripts/lib/platform.sh

if is_osx; then
  source scripts/init/osx.sh
fi

if is_linux; then
  source scripts/init/linux.sh
fi
