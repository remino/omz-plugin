# remino-tmux

An Oh My Zsh plugin with shortcuts for creating, switching, and closing tmux
sessions. When it is already running inside tmux, it switches the current client
instead of starting a nested one.

## Installation

See the repository's main `README`.

## Commands

| Command | Description |
| --- | --- |
| `to NAME` | Create `NAME` if necessary, then attach to it or switch the current tmux client to it. With tmux options instead of a name, creates a new session using those options. |
| `ts NAME` | Create a new session named `NAME`; inside tmux, switch the current client to it. Pass tmux options directly to create a session with those options. |
| `tds` | Create or switch to a session named after the current directory, with a short hash to distinguish directories sharing a name. |
| `tkss [NAME]` | Kill `NAME`, or the current session when no target is given. When closing the current tmux session, it first switches to the previously active session. |

For example:

```zsh
to work
ts scratch
tds
tkss scratch
```

When the last shell in a tmux session exits, the plugin switches the client to
the previously active session.
