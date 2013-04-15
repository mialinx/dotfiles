# Source global definitions
[ -f /etc/bashrc ] && source /etc/bashrc
[ -f ~/.colours ] && source ~/.colours

# Agent forwarding for screen
SOCK="/tmp/ssh-agent-$USER-screen"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
    rm -f /tmp/ssh-agent-$USER-screen
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi

export PAGER=less
export EDITOR=vim
export TERM=xterm-256color

alias ls='ls --color=auto'
alias ll='ls -la'
alias mc="mc -U"

PS1='[\u@\h \W]\$ '
