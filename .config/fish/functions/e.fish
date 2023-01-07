function e
    if type -q exa; and type -q git
        exa --long --all --group --no-time --git $argv
    else
        printf '%s\n' 'e: error: exa and/or git not found' >&2
        return 1
    end
end
