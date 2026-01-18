_git_aliases() {
	alias | grep -E '^g' | grep -E "='git "
}

_git_aliases_set() {
	alias g=git
	alias git-aliases="_git_aliases"

	git config --get-regexp 'alias\..' | sed 's/^alias\.//' | while read name cmd
	do
		alias g$name="git $cmd"
	done
}

_git_aliases_set
