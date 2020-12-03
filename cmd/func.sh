#!/bin/bash

function cdgp() {
  cd $(ghq root)/$(ghq list | peco)
}

function cdp() {
  cd $(ls | peco)
}
