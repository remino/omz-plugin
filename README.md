# omz-plugin

Plugin monorepo for [Oh My Zsh](https://ohmyz.sh)

Rémino Rem <https://remino.net/>, 2026

<!-- mtoc-start -->

- [Usage](#usage)
    - [Clone the repo](#clone-the-repo)
    - [Link a single plugin](#link-a-single-plugin)
- [Licence](#licence)

<!-- mtoc-end -->

## Usage

Multiple Oh My Zsh plugins are in this repository. To use them, first clone the
repo in a special area to link them later:

### Clone the repo

```sh
cd "${ZSH:-$HOME/.oh-my-zsh}"
git clone https://github.com/remino/omz-plugin remino-omz-plugin
```

Note: The paths mentioned above are suggestions and used in the examples below.
You may change them if you prefer and know what you're doing.

### Link a single plugin

You will need to add a symlink to the plugin:

```sh
cd "${ZSH_CUSTOM:-$HOME/custom}/plugins"
ln -s "${ZSH:-$HOME/.oh-my-zsh}/remino-omz-plugin/<PLUGIN_NAME>"
```

Then add it in the list of plugins of the Zsh config:

```sh
plugins+=(<PLUGIN_NAME>)
```

Finally, restart your shell.

## Licence

See `LICENCE.txt`.
