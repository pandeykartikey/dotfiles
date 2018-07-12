#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt
# Autostart X server on startup
if [[ ! $DISPLAY && $XDG_VTNR -eq 1  ]]; then
	    exec startx
    fi
