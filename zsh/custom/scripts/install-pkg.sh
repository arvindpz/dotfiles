#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    installer="sudo apt-get install"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    installer="brew install"
fi

function install-pkg() {
    eval "$installer $1"
}
