#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ${XDG_CONFIG_HOME}/env ]] && source ${XDG_CONFIG_HOME}/env
[[ -f ${XDG_CONFIG_HOME}/fun ]] && source ${XDG_CONFIG_HOME}/fun
[[ -f ${XDG_CONFIG_HOME}/aliasrc ]] && source ${XDG_CONFIG_HOME}/aliasrc
[[ -f ${XDG_CONFIG_HOME}/sources ]] && source ${XDG_CONFIG_HOME}/sources

PS1='[\u@\h \W]\$ '
