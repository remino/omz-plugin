if (( ! $+commands[mkprj] )); then
	return
fi

fpath+=("${${(%):-%x}:A:h}")
autoload -Uz cdmp

alias mp=cdmp
