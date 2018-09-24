#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Coloring less command
export LESS=-R
export LESS_TERMCAP_me=$(printf '\e[0m')
export LESS_TERMCAP_se=$(printf '\e[0m')
export LESS_TERMCAP_ue=$(printf '\e[0m')
export LESS_TERMCAP_mb=$(printf '\e[1;32m')
export LESS_TERMCAP_md=$(printf '\e[1;34m')
export LESS_TERMCAP_us=$(printf '\e[1;32m')
export LESS_TERMCAP_so=$(printf '\e[1;44;1m')

export LANG=en_US.UTF-8
export EDITOR='vim'

eval `dircolors ~/.config/ls_color/ls.color`

alias install="sudo pacman -S"
alias update="sudo pacman -Syu"
alias ainstall="aurman -S"
alias aupdate="aurman -Syu"
alias ida32="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/IDA\ 6.8/idaq.exe"
alias ida64="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/IDA\ 6.8/idaq64.exe"
alias feh="feh --scale-down"

alias gl="git log --oneline --graph --abbrev-commit --decorate"
alias gs="git status"
alias ls='ls --group-directories-first --color=auto'
alias l='ls -la --color=auto --group-directories-first'

######################################################
###################BASH HISTORY#######################
######################################################

export HISTFILE='/home/d3xt3r/.bash_history'
export HISTCONTROL=ignoredups 	  # ignore duplicate commands
unset HISTFILESIZE                # infinite History
unset HISTSIZE

###################################################
##############SHELL OPTIONS########################
###################################################

# Autocorrect typos in path names when using `cd`
shopt -s cdspell
# Append to the Bash history file, rather than overwriting it
shopt -s histappend
# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

export NVM_SOURCE="/usr/share/nvm"
export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_SOURCE/nvm.sh" ] && . "$NVM_SOURCE/nvm.sh" # This loads nvm

export PATH=$PATH:/usr/local/go/bin

alias downloadsong="youtube-dl https://www.youtube.com/playlist?list=PLUE0cRdE8qNSyrvyMdkNoJ1ggVcaw-p_H&disable_polymer=true"

alias play="vlc ~/Songs/* &"
alias wallpaper="wget --directory-prefix=/home/d3xt3r/Wallpapers/"

# added by Anaconda3 installer
export PATH="$PATH:/home/d3xt3r/anaconda3/bin"
. /home/d3xt3r/anaconda3/etc/profile.d/conda.sh
