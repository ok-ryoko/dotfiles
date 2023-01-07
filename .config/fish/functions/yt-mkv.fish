# Using yt-dlp, download best video-only and audio-only formats with all 
# optional metadata embedded and merge into MKV container
#
function yt-mkv
    if type -q yt-dlp
        yt-dlp \
            --format 'bv+ba/b' \
            --merge-output-format 'mkv' \
            --embed-chapters \
            --embed-metadata \
            --embed-subs \
            --embed-thumbnail \
            $argv
    else
        printf '%s\n' 'yt-mkv: error: yt-dlp not found' >&2
        return 1
    end
end
