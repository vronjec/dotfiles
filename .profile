# /\/|   __               __ _ _
# |/\/   / /              / _(_) |
#       / / __  _ __ ___ | |_ _| | ___
#      / / '_ \| '__/ _ \|  _| | |/ _ \
#     / /| |_) | | | (_) | | | | |  __/
#    /_(_) .__/|_|  \___/|_| |_|_|\___|
#        | |
#        |_|

export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

alias tmux='tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# Windows Subsystem for Linux
if grep -q Microsoft /proc/version; then
    # Use Windows version of selected applications
    alias docker="docker.exe"
    alias git="git.exe"
fi

# Include private bin directory in PATH
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH
