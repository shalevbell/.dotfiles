# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=50000

#Aliases / Functions
for file in ~/._*functions; do
  [[ -f "$file" ]] && source "$file"
done

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

export PATH=/usr/local/bin:$PATH

# Source aliases
if [ -f "${HOME}/.bash_aliases" ]; then
    source "${HOME}/.bash_aliases"
fi

[[ -f ~/.work ]] && source ~/.work

# Reload shell configuration
alias reload='exec bash'

alias ll='ls -al'
alias python="python3"
alias g="git"
alias gc="cd ~/git && g clone"
alias myip="curl ifconfig.me"

#fzf
if command -v fzf &> /dev/null; then
  # Use fd if available, otherwise fall back to find
  if command -v fd &> /dev/null; then
    export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
  else
    export FZF_DEFAULT_COMMAND="find . -type f -not -path '*/.git/*' -not -path '*/node_modules/*' -not -path '*/.venv/*'"
  fi
  eval "$(fzf --bash)"
fi

# Show kubernetes context if function exists
type skctl &> /dev/null && skctl
