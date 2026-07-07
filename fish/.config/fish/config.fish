set -Ux PYENV_ROOT $HOME/.pyenv
# Load private environment variables (e.g., API keys).
# Create ~/.config/fish/config_private.fish and add your keys there.
if test -f ~/.config/fish/config_private.fish
    source ~/.config/fish/config_private.fish
end
set -Ux OPENCLAW_ALLOW_INSECURE_PRIVATE_WS 1

set -Ux GHOSTTY_CONFIG ~/.config/ghostty/config
set -Ux MANPAGER 'nvim +Man!'


if test "$TERM" = xterm-ghostty
    set -gx TERM xterm-256color
end

fish_add_path /opt/homebrew/bin/
fish_add_path $PYENV_ROOT/bin

pyenv init - fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set -Ux PAGER bat
alias zs='/Users/dezmondfinney/dots/scripts/zellij-session-selector'

function e
    emacsclient -c -a emacs $argv
end

# set -Ux EDITOR "emacsclient -c -t -a emacs"
# set -Ux VISUAL "emacsclient -c -t -a emacs"

set -Ux EDITOR nvim
set -Ux VISUAL nvim

function fish_prompt
    # Get width of terminal
    set -l width (tput cols)

    # Create a line of "─" characters across
    printf "%*s\n" $width '' | tr ' ' '─'
    # Show current directory and prompt
    echo -n (prompt_pwd) ' ❯ '
end

# OpenClaw Completion
# source "/Users/dezmondfinney/.openclaw/completions/openclaw.fish"

# Hermes Agent — ensure ~/.local/bin is on PATH
fish_add_path "$HOME/.local/bin"
