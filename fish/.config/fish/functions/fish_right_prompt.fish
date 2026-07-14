function fish_right_prompt
    set -l last_status 0
    if set -q __fish_prompt_last_status
        set last_status $__fish_prompt_last_status
    end

    set -l now (date '+%H:%M')

    if test $last_status -ne 0
        printf '%s✗%s %s%s%s' (set_color brred) (set_color normal) (set_color brblack) $now (set_color normal)
    else
        printf '%s%s%s' (set_color brblack) $now (set_color normal)
    end
end
