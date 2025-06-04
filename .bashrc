# -*- sh -*-
# File based on default bashrc in ubuntu

# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Load bash configuration from local folder
BASHRCDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/bashrc.d"
if [ -d "${BASHRCDIR}" ]; then
    for F in ${BASHRCDIR}/*; do
        if [ -f "${F}" ]; then
            . $F
        fi
    done
fi
