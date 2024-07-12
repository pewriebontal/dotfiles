#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export XDG_CONFIG_HOME="$HOME/.config"

[[ -f ${XDG_CONFIG_HOME}/env ]] && source ${XDG_CONFIG_HOME}/env
[[ -f ${XDG_CONFIG_HOME}/func ]] && source ${XDG_CONFIG_HOME}/func
[[ -f ${XDG_CONFIG_HOME}/aliasrc ]] && source ${XDG_CONFIG_HOME}/aliasrc
[[ -f ${XDG_CONFIG_HOME}/sources ]] && source ${XDG_CONFIG_HOME}/sources

PS1='[\u@\h \W]\$ '

alias francinette=/home/bon/francinette/tester.sh
alias paco=/home/bon/francinette/tester.sh
eval "$(zoxide init bash)"
