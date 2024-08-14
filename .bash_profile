if [ -d "${HOME}/.bash_profile.d" ]; then
	for rc in "${HOME}/.bash_profile.d/"*; do
		if [ -f "${rc}" ]; then
			source "${rc}"
		fi
	done
	unset -v rc
fi

if [[ "$-" == *i* ]]; then
	if [ -f "${HOME}/.bashrc" ]; then
		source "${HOME}/.bashrc"
	fi
fi
