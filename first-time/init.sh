#!/usr/bin/env bash

SCRIPT_DIR=$DOTFILES/first-time

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  source $SCRIPT_DIR/linux.sh  || exit 1
elif [[ "$OSTYPE" == "darwin"* ]]; then
  source $SCRIPT_DIR/macos.sh  || exit 1
fi

source "$SCRIPT_DIR/install-oh-my-zsh.sh"
source "$SCRIPT_DIR/install-powerlevel10k.sh"
source "$SCRIPT_DIR/install-mise.sh"