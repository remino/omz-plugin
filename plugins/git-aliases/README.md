git-aliases
===========

Plugin for Oh My Zsh to alias git aliases to g*.

For example, if `git pl` is aliased to `git pull`, it will also be aliased as `gpl` in the shell.

This will also alias `g` to `git`.

## Installation

First, clone the repo:

```sh
git clone https://github.com/remino/omz-plugin-git-aliases.git "$ZSH_CUSTOM/plugins/git-aliases"
```

Second, add `git-aliases` to your Oh My Zsh plugins:

```
plugins+=(git-aliases)
```

Last, restart your shell.

You can list your git aliases using the following:

```sh
alias | grep -E '^g' | grep -E "='git "
```
