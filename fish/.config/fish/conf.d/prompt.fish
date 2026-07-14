# Prompt defaults
# Keep startup quiet and make Git prompt informative.

set -g fish_greeting ""

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_showuntrackedfiles 1
set -g __fish_git_prompt_showstashstate 1
set -g __fish_git_prompt_showupstream auto

set -g __fish_git_prompt_color_branch brmagenta
set -g __fish_git_prompt_color_dirtystate brred
set -g __fish_git_prompt_color_stagedstate bryellow
set -g __fish_git_prompt_color_stashstate brblue
set -g __fish_git_prompt_color_untrackedfiles brcyan
set -g __fish_git_prompt_char_dirtystate '*'
set -g __fish_git_prompt_char_stagedstate '+'
set -g __fish_git_prompt_char_untrackedfiles '?'
set -g __fish_git_prompt_char_stashstate '$'
set -g __fish_git_prompt_char_cleanstate ''
