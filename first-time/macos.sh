#!/bin/bash

# Install brew if command not found
command -v brew > /dev/null
if [[ $? -ne 0 ]]; then
  echo "Installing Homebrew"
  # We can use NONINTERACTIVE=1 to avoid the prompt; But I am not opting for it
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Add brew to PATH if not found
  cat $ZSH_CONFIG/.zprofile | grep 'eval "$(/opt/homebrew/bin/brew shellenv)"' > /dev/null || echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $ZSH_CONFIG/.zprofile
  cp $ZSH_CONFIG/.zprofile ~/.zprofile
  echo "Homebrew installed!!!"
  echo "Copied $ZSH_CONFIG/.zprofile to ~/.zprofile"
  echo "Close this terminal and open a new one to use brew"
  echo "cd to $DOTFILES and run ./setup to continue setup"
  exit 1
else
  echo "Homebrew already installed"
fi

export OPEN="open"