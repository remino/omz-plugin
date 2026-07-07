_vidmod_plugin_setup() {
	local -a remutils_roots
	local -a completion_files
	local root completion_file

	remutils_roots=(
		${ZSH_VIDMOD_DIR:-}
		${ZSH_REMUTILS_DIR:-}
		${VIDMOD_DIR:-}
		${REMUTILS_DIR:-}
		"$HOME/opt/remutils"
		"$HOME/Sites/remino/remutils"
		"/opt/homebrew/opt/remutils"
		"/opt/homebrew/share/remutils"
		"/usr/local/opt/remutils"
		"/usr/local/share/remutils"
	)

	for root in "${remutils_roots[@]}"; do
		[[ -n "$root" ]] || continue

		completion_files=(
			"$root/completions/zsh/_vidmod"
			"$root/vidmod/completions/zsh/_vidmod"
		)

		for completion_file in "${completion_files[@]}"; do
			if [[ -r "$completion_file" ]]; then
				source "$completion_file"
				return 0
			fi
		done
	done

	print -u2 "vidmod completion file not found. Set ZSH_VIDMOD_DIR, ZSH_REMUTILS_DIR, VIDMOD_DIR, or REMUTILS_DIR."
	return 1
}

_vidmod_plugin_setup

unset -f _vidmod_plugin_setup
