#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\e[1;34m\u \e[01;32m\W\e[1;31m\$\e[m '

export HISTCONTROL=ignoreboth:erasedups
export TERM="xterm-256color"
export EDITOR=nvim
export BRWSER=brave
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.scripts/bar
export TERMINAL=alacritty
export PF_INFO="ascii title os host kernel uptime pkgs shell editor wm memory palette"

set -o vi

alias ls='lsd -a --color=auto'
alias grep='grep --color=auto'
alias tsm='transmission-remote'
alias py="python"
alias f="cd \$(fd -t d . $HOME | fzf)"
alias yta='youtube-dl -ix --audio-format "flac"'
alias p='sudo pacman'
alias v='nvim'

force_color_prompt=yes



pfetch
