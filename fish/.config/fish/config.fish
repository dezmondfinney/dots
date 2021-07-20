set -gx ALTERNATE_EDITOR ""
set -gx EDITOR "nvim"
set -gx PAGER "most"
set -gx PATH $PATH $HOME/bin $HOME/go/bin
set -gx GOPATH $HOME/go
set -gx INFOPATH /data/data/com.termux/files/usr/share/info/
set -g fish_prompt_pwd_dir_length 9
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_color_branch magenta
set __fish_git_prompt_char_dirtystate '!'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]
    set SESSION_TYPE "remote/ssh"
end

switch $USER
    case "u0_a302"
        set -gx USER_NAME "📱Note20"
    case "u0_a235"
        set -gx USER_NAME "📱s10"
    case "*"
        set -gx USER_NAME "💻 $USER"
end

function fish_title;end

function e
  emacsclient --tty $argv
end

function battery
    set bt_status (termux-battery-status | jq .status)
    set bt_plug (termux-battery-status | jq .plugged)
    set bt_percent (termux-battery-status | jq .percentage)
    set bt_display $bt_percent"%"

    echo $bt_display
end

function xx
    exit
end

set __fish_prompt_showdirtystate 'yes'

function fish_prompt
    echo "$USER_NAME" (prompt_pwd)(fish_git_prompt)
    echo "⁁ "
end

alias gs='git status'

set fish_greeting
