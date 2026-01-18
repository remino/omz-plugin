# fd

Plugin for `fd` in Oh My Zsh.

## Installation

First, clone the repo and add a worktree to the plugin:

```bash
git clone https://github.com/remino/omz-plugin.git remino-omz-plugin
cd remino-omz-plugin
git worktree add "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fd" fd/main
```

Second, add `fd` to your Oh My Zsh plugins:

```
plugins+=(fd)
```

Last, restart your shell.

## Aliases

```
fda="fd --hidden --no-ignore"
```
