#!/bin/bash
alias ..='cd ..'

alias grep='grep --color=always'

alias ls='ls --color=auto'
alias ll='ls -lah'

alias sudoi='sudo -i'
alias sudos='sudo -s'

function psgrep () {
	ps ax | grep "$1" | grep -v "grep"
}

alias tt='mt /tmp/tmp; ll'
alias t='mt /tmp; ll'
alias th='mt ~/tmp/"$(date +%F)"; ll'
mt() {
	mkdir -p -- "$@" && cd -- "$@"
}

#openbox
alias xp='xprop | grep "WM_WINDOW_ROLE\|WM_CLASS" && echo "WM_CLASS(STRING) = \"NAME\", \"CLASS\""'

