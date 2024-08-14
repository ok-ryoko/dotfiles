if [ -f '/etc/bashrc' ]; then
	source '/etc/bashrc'
fi

if [ -d "${HOME}/.bashrc.d" ]; then
	for rc in "${HOME}/.bashrc.d/"*; do
		if [ -f "${rc}" ]; then
			source "${rc}"
		fi
	done
	unset -v rc
fi
