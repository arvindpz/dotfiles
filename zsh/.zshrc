# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/sphinx-doc/bin:/usr/local/opt/python@3.10/libexec/bin:$PATH"

# The default template can be found at
# https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.dotfiles/zsh/custom"

# ZSH_THEME="custom-af-magic"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
    colored-man-pages
    command-not-found
    docker-compose
    fzf
    git
    git-auto-fetch
    rand-quote
    ripgrep
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Checking for updates significantly increases terminal startup time; Run `omz update` yourself once in a while
DISABLE_AUTO_UPDATE=true

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferences
#
export EDITOR='vim'

export ZDOTDIR="$HOME/.dotfiles/zsh"
export HISTFILE=$ZDOTDIR/.zsh_history

export RIPGREP_CONFIG_PATH="$HOME/.dotfiles/ripgrep/.ripgreprc"

# Aliases
#
alias gpp="g++ -std=c++17 -Wall"

alias rb="ruby"

# Plugin Options
#
# fzf
# can be invoked by C-t, M-c, C-r
export FZF_DEFAULT_OPTS="--bind 'alt-j:down,alt-k:up'
                         --height=60%
                         --layout=reverse
                         --preview 'bat --style=numbers --color=always --line-range :50 {}'"

# Press C-t to start fzf in current tree, and then
# Press C-d or C-f to toggle between Directories and Files
export FZF_CTRL_T_OPTS="--bind 'ctrl-d:change-prompt(Directories> )+reload(find * -type d)'
                        --bind 'ctrl-f:change-prompt(Files> )+reload(find * -type f)'
                        --bind 'ctrl-t:change-prompt(> )+reload(find *)'"
# zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# bat
export BAT_THEME="OneHalfDark"

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

[[ -f $HOME/work/shell-scripts/.work.sh ]] && source $HOME/work/shell-scripts/.work.sh
# alias tsh="source /usr/local/bin/tsh $*"
. "$HOME/.cargo/env"

# Reference: https://kubernetes.io/docs/tasks/tools/included/optional-kubectl-configs-zsh/
# source <(kubectl completion zsh)
#
# complete -F __start_kubectl tsh

autoload -Uz compinit
compinit

# Autocompletion for AWS
# Reference: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-completion.html
complete -C '/usr/local/bin/aws_completer' aws

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/zsh/.p10k.zsh.
[[ ! -f ~/.dotfiles/zsh/.p10k.zsh ]] || source ~/.dotfiles/zsh/.p10k.zsh
alias tsh="source /usr/local/bin/tsh $*"
