#
# ~/.bashrc
#

# Arch logo at the corner
PS1='\[\e[1;32m\]\@ \[\e[1;34m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\]
       \[\e[1;32m\]     ┗─╸>>\[\e[m\] \[\e[1;37m\]👽 --> '

alsi -l﻿

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions
alias ll="ls -lhA"
#alias ls="ls -CF"
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias histg="history | grep"
alias myip="curl http://ipecho.net/plain; echo"
alias webify="mogrify -resize 690\> *.png"
alias ls='ls --color=auto'
alias exit='sh ~/dotfiles/see-you.sh; sleep 2; exit'
PS1='[\u@\h \W]\$ '

function genpasswd() {
        local l=$1
        [ "$l" == "" ] && l=16
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

export WORKON_HOME="$HOME/.virtualenvs"
source /usr/bin/virtualenvwrapper.sh

# The next line updates PATH for the Google Cloud SDK.
source '/home/anthony/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/home/anthony/google-cloud-sdk/completion.bash.inc'

source "$HOME/.homesick/repos/homeshick/homeshick.sh"