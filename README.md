# omz-plugin

Repository of plugins for [Oh My Zsh](https://ohmyz.sh)

Rémino Rem <https://remino.net/>, 2026

<!-- mtoc-start -->

- [Usage](#usage)
    - [Clone and list all plugins](#clone-and-list-all-plugins)
    - [Change to branch for plugin](#change-to-branch-for-plugin)
    - [Create a worktree for plugin in Oh My Zsh plugin directory](#create-a-worktree-for-plugin-in-oh-my-zsh-plugin-directory)
- [Licence](#licence)

<!-- mtoc-end -->

## Usage

While a monorepo with the code of all the plugins in the same branch would be
ideal, what works best with Oh My Zsh here is to have each plugin into its own
branch.

### Clone and list all plugins

```sh
git clone https://github.com/remino/omz-plugin remino-omz-plugin
cd remino-omz-plugin
git branch | grep -F / | sed -E 's/\/.*//' | sort | uniq
```

### Change to branch for plugin

```sh
git checkout <plugin_name>/main
```

### Create a worktree for plugin in Oh My Zsh plugin directory

```bash
git worktree add "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/<plugin_name>" <plugin_name>
```

## Licence

See `LICENCE.txt`.
