# Lazily load the tmux helpers the first time one is used.

_remino_tmux_set() {
	fpath+=("${${(%):-%x}:A:h}")
	autoload -Uz remino-tmux
}

_remino_tmux_set
unset -f _remino_tmux_set

to() {
	remino-tmux
	to "$@"
}

ts() {
	remino-tmux
	ts "$@"
}

tds() {
	remino-tmux
	_tmux_directory_session "$@"
}

tkss() {
	remino-tmux
	tkss "$@"
}
