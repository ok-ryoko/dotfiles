yt-mkv() {
	yt-dlp \
		--no-progress \
		--format 'bestvideo+bestaudio/best' \
		--merge-output-format 'mkv' \
		--embed-chapters \
		--embed-metadata \
		--embed-subs \
		--embed-thumbnail \
		"$@"
}
