_imgmod_plugin_setup() {
	local -a remutils_roots
	local -a completion_files
	local root completion_file

	remutils_roots=(
		${ZSH_IMGMOD_DIR:-}
		${ZSH_REMUTILS_DIR:-}
		${IMGMOD_DIR:-}
		${REMUTILS_DIR:-}
		"$HOME/opt/remutils"
		"$HOME/Sites/remino/remutils"
		"/opt/remutils"
		"/opt/homebrew/opt/imgmod"
		"/usr/local/opt/imgmod"
	)

	for root in "${remutils_roots[@]}"; do
		[[ -n "$root" ]] || continue

		completion_files=(
			"$root/completions/zsh/_imgmod"
			"$root/imgmod/completions/zsh/_imgmod"
			"$root/libexec/completions/zsh/_imgmod"
			"$root/share/zsh/site-functions/_imgmod"
		)

		for completion_file in "${completion_files[@]}"; do
			if [[ -r "$completion_file" ]]; then
				source "$completion_file"
				return 0
			fi
		done
	done

	print -u2 "imgmod completion file not found. Set ZSH_IMGMOD_DIR, ZSH_REMUTILS_DIR, IMGMOD_DIR, or REMUTILS_DIR."
	return 1
}

_imgmod_plugin_setup

unset -f _imgmod_plugin_setup
