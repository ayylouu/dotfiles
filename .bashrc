#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups
export TERM="xterm-256color"              # getting proper colors
export EDITOR=nvim
export BRWSER=brave
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.scripts/bar
export TERMINAL=alacritty

#ls
alias ls='lsd -al --color=auto'
# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#python
alias py="python"

alias tsm='transmission-remote'

force_color_prompt=yes

PS1='\e[1;34m\u \e[01;32m\W\e[1;31m\$\e[m '

set -o vi

alias p='sudo pacman'
alias v='nvim -u ~/.vimrc'

#youtube-dl
alias yta='youtube-dl -ix --audio-format "flac"'

#neofetch
alias neofetch='neofetch --disable theme icons cpu gpu'

[[ -f ~/.bashrc-personal ]] && . ~/.bashrc-personal

neofetch
