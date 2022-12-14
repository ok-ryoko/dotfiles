# Pipe ripgrep output to fzf with proper color handling
#
function rf
    if type -q rg -a type -q fzf
        rg --color=ansi $argv | fzf --ansi --preview=''
    else
        printf '%s\n' 'rf: error: rg and/or fzf not found'
        return 1
    end
end
