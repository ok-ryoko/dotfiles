if command -v rg > '/dev/null'; then
	if [ -f "${HOME}/.config/ripgreprc" ]; then
		export RIPGREP_CONFIG_PATH="${HOME}/.config/ripgreprc"
	fi
fi
