# git-aliases

Plugin for Oh My Zsh to alias git aliases to g\*.

For example, if `git pl` is aliased to `git pull`, it will also be aliased as
`gpl` in the shell.

This will also alias `g` to `git`.

## Installation

See repo's main `README`.

## Aliases

You can list your git aliases using the following:

```sh
alias | grep -E '^g' | grep -E "='git "
```
