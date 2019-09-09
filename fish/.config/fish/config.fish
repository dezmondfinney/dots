set -gx ALTERNATE_EDITOR ""
set -gx EDITOR "emacsclient -nw"
set -gx PATH $PATH $HOME/bin $HOME/go/bin
set -gx GOPATH $HOME/go

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]
    set SESSION_TYPE "remote/ssh"
end

switch $USER
    case "u0_a235"
        set -gx USER_NAME "s10"
    case "*"
        set -gx USER_NAME "Default"
end

function fish_title;end

function e
  emacsclient --tty $argv
end

function battery
    set bt_status (termux-battery-status | jq .status)
    set bt_plug (termux-battery-status | jq .plugged)
    set bt_percent (termux-battery-status | jq .percentage)
    set bt_display $bt_status $bt_percent "%"

    echo $bt_display
end

function xx
    exit
end
