[[ $- != *i* ]] && return

export XDG_CONFIG_HOME="$HOME/.config"

[[ -f "${XDG_CONFIG_HOME}/env" ]] && source "${XDG_CONFIG_HOME}/env"
[[ -f "${XDG_CONFIG_HOME}/func" ]] && source "${XDG_CONFIG_HOME}/func"
[[ -f "${XDG_CONFIG_HOME}/aliasrc" ]] && source "${XDG_CONFIG_HOME}/aliasrc"
[[ -f "${XDG_CONFIG_HOME}/sources" ]] && source "${XDG_CONFIG_HOME}/sources"

PS1='[\u@\h \W]\$ '

alias francinette="$HOME/francinette/tester.sh"
alias paco="$HOME/francinette/tester.sh"

fortune | cowsay

eval "$(zoxide init bash)"

. "$HOME/.cargo/env"
