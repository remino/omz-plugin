# rg

Plugin for ripgrep (`rg`) in Oh My Zsh.

## Installation

First, clone the repo and add a worktree to the plugin:

```bash
git clone https://github.com/remino/omz-plugin.git remino-omz-plugin
cd remino-omz-plugin
git worktree add "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/rg" rg/main
```

Second, add `template` to your Oh My Zsh plugins:

```
plugins+=(template)
```

Last, restart your shell.

## Aliases

```
rga="rg --hidden --no-ignore"
```
