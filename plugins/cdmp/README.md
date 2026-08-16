# omz-plugin-cdmp

The `cdmp` plugin runs `mkprj` with the supplied arguments, then changes to the
directory printed by that command.

## Installation

See the repository's main `README`.

## Usage

Add `cdmp` to your Oh My Zsh plugins:

```zsh
plugins=(... cdmp)
```

Then use it just as you would use `mkprj`:

```zsh
cdmp my-project
```

This is equivalent to running:

```zsh
cd "$(mkprj my-project)"
```

`cdmp` only changes the current directory when `mkprj` succeeds and prints an
existing directory. If `mkprj` fails, prints nothing, or prints a path that is
not a directory, `cdmp` returns a nonzero status and leaves the current
directory unchanged.
