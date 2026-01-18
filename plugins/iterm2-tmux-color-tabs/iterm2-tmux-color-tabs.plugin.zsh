_iterm2_tmux_color_tabs() {
	[ -n "$TMUX" ] || return
	[ -n "$ITERM_SESSION_ID" ] || return
	which iterm2_tab_color &> /dev/null || return

	# pastel color palette in "r g b" format
	local palette=($ITERM2_TMUX_COLOR_TABS_PALETTE)

	if [ -z "$palette" ]; then
		palette=(
			"255 173 173"
			"255 214 165"
			"253 255 182"
			"202 255 191"
			"155 246 255"
			"160 196 255"
			"189 178 255"
			"255 198 255"
		)
	fi

	local pane=${TMUX_PANE#%}
	local index=$((pane % ${#palette[@]} + 1))
	local color=${palette[index]}

	while read -r r g b; do
		iterm2_tab_color $r $g $b
	done <<< "${color}"
}

_iterm2_tmux_color_tabs

unset _iterm2_tmux_color_tabs

