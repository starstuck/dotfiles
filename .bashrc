# -*- sh -*-

# ~/.bashrc: executed by bash(1) in interactive non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

for F in "${XDG_CONFIG_HOME:-${HOME}/.config}"/{shrc.d,bashrc.d}/*; do
  if [ -f "${F}" ]; then
    . $F
  fi
done
