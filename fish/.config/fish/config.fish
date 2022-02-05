set -gx ALTERNATE_EDITOR ""
set -gx EDITOR nvim
set -gx PAGER most
set -gx PATH $PATH $HOME/bin $HOME/go/bin $HOME/.local/bin /usr/local/go/bin
set -gx GOPATH $HOME/go
set -gx INFOPATH /data/data/com.termux/files/usr/share/info/
set fish_greeting

function fish_title
end

abbr -a -g tx task export
abbr -a -g ar ranger
abbr -a -g ga git add
abbr -a -g gs git status
abbr -a -g xx exit
abbr -a -a lg lazygit
