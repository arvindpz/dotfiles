# Environment Variables for my use

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/sphinx-doc/bin:/usr/local/opt/python@3.10/libexec/bin:$PATH"


# ZSH Preferences
export ZDOTDIR="$HOME/.dotfiles/zsh"
export ZSH="$ZDOTDIR/.oh-my-zsh"
export ZSH_CUSTOM="$ZDOTDIR/custom"
export HISTFILE=$ZDOTDIR/.zsh_history


# DotFiles
export DOTFILES="$HOME/.dotfiles"

# Used for caching powerlevel10k prompt
export XDG_CACHE_HOME="$DOTFILES/.cache"

export RIPGREP_CONFIG_PATH="$HOME/.dotfiles/ripgrep/.ripgreprc"


# Preferences

export EDITOR='vim'


eval "$(/opt/homebrew/bin/brew shellenv)"


eval "$(~/.dotfiles/mise/mise activate zsh)"
