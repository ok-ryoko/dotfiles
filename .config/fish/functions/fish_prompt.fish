function fish_prompt
    set colored_address ( \
        printf '%s%s%s@%s%s%s' \
            (set_color $fish_color_user) $USER \
            (set_color 'normal') \
            (set_color $fish_color_host) $HOSTNAME \
            (set_color 'normal')
    )
    printf '%s $ ' $colored_address
end
