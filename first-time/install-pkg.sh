#!/bin/bash

# This approach fails if package name differs between OSes

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    installer="sudo apt-get install"
    # info="dpkg -s" # Untested
elif [[ "$OSTYPE" == "darwin"* ]]; then
    installer="brew install"
    info="brew list -1"
fi

# This approach fails when package name differs from command name
# Eg: derailed/k9s/k9s is installed via brew but the command is k9s
function is_installed() {
    $info | grep $1 > /dev/null
    return $?
}

function install_pkg() {
    is_installed $1 || eval "$installer $1"
}
