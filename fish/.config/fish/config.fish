set -gx ALTERNATE_EDITOR ""
set -gx EDITOR lvim
set -gx PAGER most
set -gx PATH $PATH $HOME/bin $HOME/go/bin $HOME/.local/bin /usr/local/go/bin
set -gx GOPATH $HOME/go
set -gx INFOPATH /data/data/com.termux/files/usr/share/info/
set -g fish_prompt_pwd_dir_length 9
set __fish_git_prompt_showdirtystate yes
set __fish_git_prompt_color_branch magenta
set __fish_git_prompt_char_dirtystate '!'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]
    set SESSION_TYPE remote/ssh
end

switch $USER
    case u0_a302
        set -gx USER_NAME "📱Note20"
    case u0_a235
        set -gx USER_NAME "📱s10"
    case "*"
        set -gx USER_NAME "💻 $USER@$hostname"
end

set __fish_prompt_showdirtystate yes
set fish_greeting

function fish_prompt
    echo "$USER_NAME" (prompt_pwd)(fish_git_prompt)
    echo "⁁ "
end

function fish_title
end

abbr -a -g tx task export
abbr -a -g ar ranger
abbr -a -g ga git add
abbr -a -g gs git status
abbr -a -g xx exit
abbr -a -a lg lazygit
