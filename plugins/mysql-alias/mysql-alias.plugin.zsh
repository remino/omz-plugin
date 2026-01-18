_mysql_alias_set() {
	fpath+=($(dirname "$0"))
	autoload -Uz mysql
}

_mysql_alias_set

unset -f _mysql_alias_set
