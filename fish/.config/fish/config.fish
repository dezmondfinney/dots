set -gx ALTERNATE_EDITOR ""
set -gx EDITOR nvim
set -gx PATH $PATH $HOME/bin $HOME/go/bin $HOME/.local/bin /usr/local/go/bin
set -gx GOPATH $HOME/go
set -gx INFOPATH /data/data/com.termux/files/usr/share/info/
set -gx LOGDATE (date +"%Y%m%dT%H%M%S")
set fish_greeting
set --universal nvm_default_version latest

abbr -a -g tx task export
abbr -a -g ar ranger
abbr -a -g ga git add
abbr -a -g gs git status
abbr -a -g xx exit
abbr -a -a lg lazygit
abbr -a -a ll exa --long --icons
abbr -a -a la exa --long --icons --all

starship init fish | source
