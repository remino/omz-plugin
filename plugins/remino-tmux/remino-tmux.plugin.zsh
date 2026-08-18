# Lazily load the tmux helpers the first time one is used.

_remino_tmux_set() {
	fpath+=("${${(%):-%x}:A:h}")
	autoload -Uz _remino_tmux_init
}

_remino_tmux_set
unset -f _remino_tmux_set

_remino_tmux_exit() {
	local session_windows window_panes

	[[ -z "$TMUX" ]] && return
	session_windows="$( command tmux display-message -p '#{session_windows}' 2> /dev/null )" || return
	window_panes="$( command tmux display-message -p '#{window_panes}' 2> /dev/null )" || return

	[[ "$session_windows" == 1 && "$window_panes" == 1 ]] || return
	command tmux switch-client -l 2> /dev/null
}

autoload -Uz add-zsh-hook
add-zsh-hook zshexit _remino_tmux_exit

to() {
	_remino_tmux_init
	to "$@"
}

ts() {
	_remino_tmux_init
	ts "$@"
}

if (( $+aliases[tds] )); then
	unalias tds
fi

tds() {
	_remino_tmux_init
	_remino_tmux_directory_session "$@"
}

tkss() {
	_remino_tmux_init
	tkss "$@"
}

tdup() {
	_remino_tmux_init
	tdup "$@"
}
