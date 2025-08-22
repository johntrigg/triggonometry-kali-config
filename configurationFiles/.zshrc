if [ "$TMUX" = "" ]; then
    tmux
fi

# History configuration
export HISTFILE=~/.zsh_history
export HISTSIZE=100000000
export SAVEHIST=100000000

# Share history across multiple windows
setopt HIST_IGNORE_DUPS  # Ignore duplicate entries
setopt HIST_SAVE_NO_DUPS # Don't save duplicate commands in a row
setopt INC_APPEND_HISTORY  # Append history incrementally
setopt SHARE_HISTORY # Share history between all sessions

# Created by `pipx` on 2024-03-09 07:10:56
export PATH="$PATH:/home/kali/.local/bin"
export JAVA_HOME="$JAVA_HOME"

neofetch
