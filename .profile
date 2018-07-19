# /\/|   __               __ _ _
# |/\/   / /              / _(_) |
#       / / __  _ __ ___ | |_ _| | ___
#      / / '_ \| '__/ _ \|  _| | |/ _ \
#     / /| |_) | | | (_) | | | | |  __/
#    /_(_) .__/|_|  \___/|_| |_|_|\___|
#        | |
#        |_|

#
# XDG
#

export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

alias tmux='tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

#
# Path
#

# Include private bin directory in PATH
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH

#
# Alias
#

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias d='docker'
alias g='git'

#
# Color
#

case "$TERM" in
    xterm-color|*-256color)
        alias ls='ls --color=auto'
        alias grep='grep --color=auto'
        alias fgrep='fgrep --color=auto'
        alias egrep='egrep --color=auto'

        # Color GCC warnings and errors
        export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
        ;;
esac

#
# Prompt
#

#
# Bash
#

if [ "$BASH" ]; then
    # check window size after each command
    shopt -s checkwinsize

    # append to history file instead of overwrite
    shopt -s histappend

    # ignore duplicate lines or lines starting with space in history
    HISTCONTROL=ignoreboth

    HISTSIZE=1000
    HISTFILESIZE=2000
fi

#
# Windows Subsystem for Linux
#

if grep -q Microsoft /proc/version; then
    # Use Windows version of selected applications
    alias docker="docker.exe"
    alias git="git.exe"
fi

#
# Other
#

# Display old-school greeting
if [ -x "$(command -v cowsay)" ] && [ -x "$(command -v fortune)" ]; then
    if [ -x "$(command -v lolcat)" ]; then
        fortune | cowsay | lolcat
    else
        fortune | cowsay
    fi

    # Separate greeting from prompt with a newline
    echo
fi
