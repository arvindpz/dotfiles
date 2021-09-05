# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# The default template can be found at
# https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.dotfiles/zsh/custom"

ZSH_THEME="custom-af-magic"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
    bundler
    colored-man-pages
    command-not-found
    docker-compose
    fzf
    git
    git-auto-fetch
    rand-quote
    ripgrep
    ruby
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferences
#
export EDITOR='vim'

export ZDOTDIR="$HOME/.dotfiles/zsh"
export HISTFILE=$ZDOTDIR/.zsh_history


# Aliases
#
alias gpp="g++ -std=c++17 -Wall"


# Plugin Options
#
# fzf
export FZF_DEFAULT_OPTS="--bind 'alt-j:down,alt-k:up' --height=50% --layout=reverse"


# Bindkeys
#
# \e => Option-key, ^ => Ctrl

# zsh-autosuggestions; Press C-e or M-' '
bindkey '\e ' autosuggest-accept

# edit current command using vim; Press C-v
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

# tab-complete navigaiton using vim keys; Press C-hjkl
bindkey -M menuselect '^l' vi-forward-char
bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^j' vi-down-line-or-history


# some other scripts
source $ZSH_CUSTOM/scripts/script.sh

[[ -f $HOME/.work.sh ]] && source $HOME/.work.sh
alias tsh="source /usr/local/bin/tsh $*"
