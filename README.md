## Installation

```
export GIT_DIR=$HOME/.dotfiles.git
git init
git remote add origin git@github.com:starstuck/dotfiles.git
git fetch origin
git --work-tree=$HOME checkout -b main --track origin/main
unset GIT_DIR
```

Note, `README.md` will not be cloned becuase ti has _skip-worktree_ bit set.