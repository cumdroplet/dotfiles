#!/bin/env bash

export XDG_SESSION_TYPE="x11"
export XDG_CURRENT_DESKTOP="bspwm"
export XDG_SESSION_DESKTOP="bspwm"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

source "$XDG_CONFIG_HOME/user-dirs.dirs"

export PS1="\w $ "
export PATH="$HOME/.local/bin/:$PATH"
export EDITOR="kak"
export PAGER="less"
export BROWSER="qutebrowser"
export PROMPT_COMMAND='printf "\033]0;$PWD\007"'
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export OLDPWD="$XDG_CONFIG_HOME"
export SHFM_OPENER="xdg-open"
export HISTFILE="$XDG_CACHE_HOME/bash_hist"
export HISTSIZE="-1"
export HISTFILESIZE="-1"
export HISTCONTROL="ignoredups:erasedups"
export LESSHISTFILE="$XDG_CACHE_HOME/less_hist"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

alias ls="ls -h --color=auto --group-directories-first"
alias df="df -h"
alias cp="cp -ivr"
alias mv="mv -iv"
alias rm="rm -iv"
alias rmdir="rmdir -pv"
alias mkdir="mkdir -pv"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias shred="shred -zv"
alias top="htop"
alias o="xdg-open"
alias g="git"
alias xclip="xclip -selection clipboard"

shopt -s cmdhist
shopt -s cdspell
shopt -s histappend

complete -cf doas
complete -cf man
complete -cf swallow

bind -x '"\C-f":shfm'
bind -x '"\C-l":clear'

shfm() {
	cd "$(command shfm $@)" ||
	exit 1
}

[ "$(tty)" == /dev/tty1 ] && startx "$XDG_CONFIG_HOME/x/init"
