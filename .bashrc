if [ -f '/etc/bashrc' ]; then
	source '/etc/bashrc'
fi

if ! [[ "${PATH}" =~ "${HOME}/.local/bin:${HOME}/bin:" ]]; then
	PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"
fi
export PATH

if [ -d "${HOME}/.bashrc.d" ]; then
	for rc in "${HOME}/.bashrc.d/"*; do
		if [ -f "${rc}" ]; then
			source "${rc}"
		fi
	done
fi
unset rc
