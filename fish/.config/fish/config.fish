set -gx ALTERNATE_EDITOR ""
set -gx EDITOR lvim
set -gx PATH $PATH $HOME/bin $HOME/go/bin $HOME/.local/bin /usr/local/go/bin
set -gx GOPATH $HOME/go
set -gx INFOPATH /data/data/com.termux/files/usr/share/info/
set -gx LOGDATE (date +"%Y%m%dT%H%M%S")
set fish_greeting

function fish_prompt
  echo (fish_git_prompt) " "
end

function fish_right_prompt
  echo (prompt_pwd)
end

abbr -a -g tx task export
abbr -a -g ar ranger
abbr -a -g ga git add
abbr -a -g gs git status
abbr -a -g xx exit
abbr -a -a lg lazygit
abbr -a -a ll exa --long --icons
abbr -a -a la exa --long --icons --all
