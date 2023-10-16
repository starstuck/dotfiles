## Installation

```
export GIT_DIR=$HOME/.dotfiles.git
git init
git remote add origin git@github.com:starstuck/dotfiles.git
git fetch origin
git --work-tree=$HOME checkout -b main --track origin/main
git --work-tree=$HOME update-index --skip-worktree README.md LICENSE
rm README.md LICENSE
unset GIT_DIR
```

## Usage

I use convenience alias to manage files from dotfiles:

```
alias dotfiles='git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'
```
