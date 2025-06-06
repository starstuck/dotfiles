# -*- sh -*-
# ls aliases
alias ll='ls -slF'
alias la='ls -A'
alias l='ls -CF'

# Grep aliases
alias gcss='grep -d recurse --include "*.css" . -e'
alias gless='grep -d recurse --include "*.less" . -e'
alias gjs='grep -d recurse --include "*.js" . -e'
alias gpy='grep -d recurse --include "*.py" . -e'
alias gxml='grep -d recurse --include "*.xml" . -e'

# Installed applications short aliases
alias ec=emacsclient

# For now dotfiles is just an alias for git
alias dotfiles="git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"
alias dfls="dotfiles"
