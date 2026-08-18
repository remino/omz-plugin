# Lazily load the tmux helpers the first time one is used.

_remino_tmux_set() {
	fpath+=("${${(%):-%x}:A:h}")
	autoload -Uz _remino_tmux_init
}

_remino_tmux_set
unset -f _remino_tmux_set

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
