#!/usr/bin/env bash

unalias gco;

function gco() {
  if [[ "$#" == 0 ]]; then
    git checkout $(git --no-pager branch | fzf --preview 'git --no-pager log -n 5 --decorate --pretty=short --color=always $( echo {} | cut -c 3-) --')
  else
    git checkout $@
  fi
}

