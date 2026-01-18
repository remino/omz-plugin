# template

Template for plugin for Oh My Zsh.

This README is also a template.

Don't forget to update it and don't actually follow the instructions below.

## Installation

First, clone the repo and add a worktree to the plugin:

```bash
git clone https://github.com/remino/omz-plugin.git remino-omz-plugin
cd remino-omz-plugin
git worktree add "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/template" template/main
```

Second, add `template` to your Oh My Zsh plugins:

```
plugins+=(template)
```

Last, restart your shell.
