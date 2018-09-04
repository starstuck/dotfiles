# -*- sh -*-
# File based on default bashrc in ubuntu

# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=1000000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Cygwin specyfic tweeks
if [ "$(uname -o 2>/dev/null)" = "Cygwin" ]; then
    # Ignore /r in shell scripts with dos style line endings
    set -o igncr
    export SHELLOPTS
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
for COMPLETION_FILE in /etc/bash_completion /usr/local/etc/bash_completion; do
    if [ -f "$COMPLETION_FILE" ]; then	
        . "$COMPLETION_FILE"
    fi
done

# Load further bash configuration from local folder
BASHRCDIR="${HOME}/.bashrc.d"
if [ -d "${BASHRCDIR}" ]; then
    for F in ${BASHRCDIR}/*; do
        if [ -f "${F}" ]; then
            echo "Loading: $F"
            . $F
        fi
    done
fi
