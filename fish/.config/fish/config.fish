set -gx ALTERNATE_EDITOR ""
set -gx EDITOR "emacsclient -nw"
set -gx PATH $PATH $HOME/bin $HOME/go/bin
set -gx GOPATH $HOME/go
set -gx INFOPATH /data/data/com.termux/files/usr/share/info/
set -g fish_prompt_pwd_dir_length 5

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

# function fish_prompt
#     set_color purple
#     set_color -b white
#     echo "$USER_NAME" (set_color -b normal)
#     set_color FFF
#     echo (prompt_pwd) (set_color normal)
# end

set fish_greeting
