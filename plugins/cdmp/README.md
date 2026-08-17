# omz-plugin-cdmp

An Oh My Zsh plugin that runs [`mkprj`](https://github.com/remino/mkprj) and
changes to the directory it prints. It also provides the shorter `mp` alias.

## Installation

See the repository's main `README`.

`mkprj` must be installed and available in `PATH` before Oh My Zsh loads this
plugin.

## Usage

Add `cdmp` to your Oh My Zsh plugins:

```zsh
plugins=(... cdmp)
```

Then use it as you would use `mkprj`:

```zsh
cdmp my-project
mp my-project
```

`cdmp` leaves the current directory unchanged when `mkprj` fails, prints
nothing, or prints a path that is not a directory.
