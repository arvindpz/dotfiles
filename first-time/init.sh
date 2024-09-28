#!/bin/bash

SCRIPT_DIR=$DOTFILES/first-time

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  sh $SCRIPT_DIR/linux.sh  || exit 1
elif [[ "$OSTYPE" == "darwin"* ]]; then
  sh $SCRIPT_DIR/macos.sh  || exit 1
fi

sh $SCRIPT_DIR/install-oh-my-zsh.sh
sh $SCRIPT_DIR/install-powerlevel10k.sh
sh $SCRIPT_DIR/install-mise.sh