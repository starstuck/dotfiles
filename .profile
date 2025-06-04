# -*- mode: sh; -*-
#
# ~/.profile: executed by the command interpreter for login shells. 
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# if running bash include also bashrc.
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# Load environment configuration from profiles folder 
PROFILEDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/profile.d"
if [ -d "${PROFILEDIR}" ]; then
    for F in ${PROFILEDIR}/*; do
        if [ -f "${F}" ]; then
            . $F
        fi
    done
fi
