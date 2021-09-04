[[ $- != *i* ]] && return # If not running interactively, don't do anything

PS1='\e[1;34m\u \e[01;32m\W\e[1;31m\$\e[m '

export HISTCONTROL=ignoreboth:erasedups
export TERM="xterm-256color"
export EDITOR=nvim
export BRWSER=brave
export PATH=$PATH:$HOME/.scripts:$HOME/.scripts/bar:$HOME/.local/bin
export TERMINAL=alacritty
export PF_INFO="ascii title os host kernel uptime pkgs shell editor wm memory palette"
export LESSHISTFILE=-

set -o vi
alias ls='lsd -Al'
alias grep='grep --color=auto'
alias tsm='transmission-remote'
alias py="python"
alias f="cd \$(fd -t d . $HOME | fzf)"
alias yta='youtube-dl -ix --audio-format "flac" --restrict-filenames -o "%(title)s.%(ext)s"'
alias p='sudo pacman'
alias v='nvim'
alias c="cd_lf"

cd_lf () {
    tmp="$(mktemp)"
    /usr/bin/lf --last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

pfetch
eval "$(starship init bash)"
