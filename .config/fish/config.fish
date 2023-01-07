function fish_greeting
    printf "$(fish -v)\n"
    printf "%s$(date --iso-8601=seconds)%s\n" \
        (set_color $fish_color_comment) \
        (set_color normal)
end

if status is-interactive
    alias q='exit'

    if type -q bat
        abbr -a b 'bat'
        set -gx BAT_PAGER 'less --quit-if-one-screen --RAW-CONTROL-CHARS'
        set -gx PAGER 'bat --plain'
    end

    if type -q exa
        abbr -a t 'exa -TL 2'
    end

    if type -q fd
        abbr -a f 'fd -H --no-ignore-vcs'
    end

    if type -q fzf
        set -gx FZF_DEFAULT_OPTS \
            '--multi' \
            '--cycle' \
            '--pointer=→' \
            '--marker=→' \
            '--tabstop=4'

        if type -q bat
            set -gx FZF_DEFAULT_OPTS \
                "$FZF_DEFAULT_OPTS --preview='bat --plain {}'"
        end

        if type -q fd
            set -gx FZF_DEFAULT_COMMAND 'fd --hidden --no-ignore-vcs'
        end
    end

    if type -q git
        abbr -a g   'git'
        abbr -a ga  'git add'
        abbr -a gb  'git branch'
        abbr -a gcl 'git clone'
        abbr -a gcm 'git commit'
        abbr -a gco 'git checkout'
        abbr -a gd  'git diff'
        abbr -a gs  'git status'
    end

    if type -q just
        abbr -a j 'just'
    end

    if type -q man
        abbr -a m 'man'
    end

    if type -q nvim
        abbr -a n 'nvim'
        set -gx EDITOR 'nvim'
    end

    if type -q podman
        abbr -a p 'podman'
        abbr -a pco 'podman commit'
    end

    if type -q rg
        set -l RG_CONFIG_PATH "$HOME/.ripgreprc"
        if test -f "$RG_CONFIG_PATH"
            set -gx RIPGREP_CONFIG_PATH "$RG_CONFIG_PATH"
        end
    end
end
