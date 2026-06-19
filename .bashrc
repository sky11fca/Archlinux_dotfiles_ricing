#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# export LESS="$LESS -Q"
export EDITOR="nvim"
export MANPAGER="nvim +Man!"

alias ed='ed -p "-> "'

alias echo='echo -e'

alias ls='ls -1 --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

PS1='[\u@\h \W]\$ '

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias v='nvim'
alias sv='sudo nvim'
alias vi='nvim'
alias svi='sudo nvim'
alias edit='nvim'

alias mv="mv -i"
alias cp="cp -i"
alias ln="ln -i"
alias rm="rm -I --preserve-root"

alias chmod="chmod --preserve-root"
alias chown="chown --preserve-root"
alias chgrp="chgrp --preserve-root"

alias ll='ls -lah --color=auto --group-directories-first'
alias l='ls -lh --color=auto --group-directories-first'

alias neofetch='fastfetch'

# Helpful aliases

alias mkdir="mkdir -pv"
alias ping="ping -c 5"
# Added by Antigravity CLI installer
export PATH="/home/mrbogdanovich/.local/bin:$PATH"

[ -f "/home/mrbogdanovich/.ghcup/env" ] && . "/home/mrbogdanovich/.ghcup/env" # ghcup-env
