# iterm2-tmux-color-tabs

![Colourful tabs](tabs.png)

Plugin for Oh My Zsh to make your iTerm2 tmux tabs colourful.

## Installation

See repo's main `README`.

When done, every subsequent tmux tab opened in iTerm2 will have the next colour
from the default or specified palette.

## Custom Palette

You can customize the color palette by setting the `ITERM2_TMUX_COLOR_TABS`
environment variable.

### Default

![Default palette](default.png)

```sh
ITERM2_TMUX_COLOR_TABS_PALETTE=(
	"255 173 173"
	"255 214 165"
	"253 255 182"
	"202 255 191"
	"155 246 255"
	"160 196 255"
	"189 178 255"
	"255 198 255"
)
```

### Example

![Example palette](example.png)

```sh
ITERM2_TMUX_COLOR_TABS_PALETTE=(
	"247 37 134"
	"181 23 158"
	"114 9 183"
	"86 11 173"
	"72 12 168"
	"58 12 163"
	"63 55 201"
	"67 97 238"
	"72 149 239"
	"76 201 240"
)
```
