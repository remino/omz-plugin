alias rga="rg --follow --hidden --no-ignore"
alias -g R='| rg'

if [[ -z "$RIPGREP_CONFIG_PATH" ]]; then
	export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-$HOME/.config}/rg/config"
fi
