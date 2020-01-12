#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[91m[\e[33m\u\e[93m@\e[34m\h \e[95m\W\e[91m]\e[0m\$ '


alias c='clear'
alias r='ranger'
alias icfg='vim ~/.config/i3/config'
