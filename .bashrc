#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append to the history file, don't overwrite it                                                                                                                                 
shopt -s histappend

# If id command returns zero, you’ve root access.
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
   PS1='\[\033[0;37m\][\t] \[\033[1;31m\][\u@\h \[\033[0;37m\]\W\[\033[1;31m\]]\[\033[0m\]\$ '
else # normal
     #PS1='\[\033[0;37m\][\t] \[\033[1;36m\][\u@\h \[\033[0;37m\]\W\[\033[1;36m\]]\[\033[0m\]\$ '
     export PS1="\[\033[38;5;249m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;3m\]\t\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;1m\]\$?\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;2m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] :\[$(tput sgr0)\]\[\033[38;5;14m\]\W\[$(tput sgr0)\]\[\033[38;5;247m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"
fi

if [ -f ~/.bash_aliases ]; then
 . ~/.bash_aliases
fi
if [ -f ~/.bash_function ]; then
 . ~/.bash_function
fi

export EDITOR="vim"

complete -cf sudo
complete -cf man

export PATH=$PATH:~/bin
