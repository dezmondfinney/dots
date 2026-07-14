function fish_prompt
    set -g __fish_prompt_last_status $status

    set -l user_color brwhite
    set -l path_color brblue
    set -l separator_color brblack
    set -l error_color brred
    set -l prompt_color brgreen

    set -l user_segment (set_color $user_color)$USER(set_color normal)
    set -l host_segment ""
    if set -q SSH_CONNECTION
        set host_segment (string join '' (set_color $separator_color) '@' (set_color brcyan) (prompt_hostname) (set_color normal))
    end

    set -l path_segment (set_color $path_color)(prompt_pwd)(set_color normal)
    set -l git_segment (fish_git_prompt)

    printf '%s' $user_segment
    printf '%s' $host_segment
    printf '%s' ' '
    printf '%s' $path_segment

    if test -n "$git_segment"
        printf ' %s·%s %s' (set_color $separator_color) (set_color normal) $git_segment
    end

    if test $__fish_prompt_last_status -ne 0
        printf ' %s·%s %s✗%s%s' (set_color $separator_color) (set_color normal) (set_color $error_color) $__fish_prompt_last_status (set_color normal)
    end

    printf '\n%s%s%s' (set_color $prompt_color) '❯ ' (set_color normal)
end
