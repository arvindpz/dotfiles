# The default template can be found at
# https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Move through words in bash style
# In bash, a word is a-zA-Z0-9
# In zsh, a word is anything between two spaces
# I would want "www.google.com" to be treated as 3 words
autoload -U select-word-style
select-word-style bash

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
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Checking for updates significantly increases terminal startup time; Run `omz update` yourself once in a while
DISABLE_AUTO_UPDATE=true

source $ZSH/oh-my-zsh.sh

# User configuration

# Aliases
#
alias cat="bat"
alias code="open -a Visual\ Studio\ Code"
alias gpp="g++ -std=c++17 -Wall"
alias rb="ruby"
alias tsh="source /usr/local/bin/tsh $*"


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

# To customize prompt, run `p10k configure` or edit ZDOTDIR/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh
source $ZSH_CUSTOM/p10k.mise.zsh

