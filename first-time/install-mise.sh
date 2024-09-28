#!/bin/bash

# https://github.com/jdx/mise

curl https://mise.run | sh

mkdir -p $DOTFILES/mise
mv ~/.local/bin/mise ~/.dotfiles/mise/mise

cat $ZSH_CONFIG/.zprofile | grep 'eval "$(~/.dotfiles/mise/mise activate zsh)"' > /dev/null || echo 'eval "$(~/.dotfiles/mise/mise activate zsh)"' >> $ZSH_CONFIG/.zprofile