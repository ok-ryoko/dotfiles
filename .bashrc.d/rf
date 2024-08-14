rf() {
	if [ $# -lt 1 ]; then
		printf 'rf: error: %s\n' 'expected at least one argument' 1>&2
		return 2
	fi
	rg --color=ansi "$@" | fzf --ansi
}
