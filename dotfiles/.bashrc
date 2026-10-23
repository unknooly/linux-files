#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

#PS1='[\u@\h \W]\$ '

GREEN="\[\e[32m\]";
BLUE="\[\e[34m\]"
YELLOW="\[\e[33m\]"
CLEAR="\[\e[0m\]"

PS1="${GREEN}\u@\h${CLEAR} ${BLUE}\W${CLEAR} \$ "

alias ff='fastfetch'