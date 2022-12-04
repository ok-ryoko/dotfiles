# Using yt-dlp, extract audio to MP3 format with VBR quality
#
function yt-mp3
    if type -q yt-dlp -a type -q ffmpeg
        yt-dlp \
            --extract-audio \
            --audio-format 'mp3' \
            --audio-quality 0 \
            $argv
    else
        printf '%s\n' 'yt-mp3: error: yt-dlp and/or ffmpeg not found'
        return 1
    end
end
