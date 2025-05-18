export EDITOR='nvim'
export VISUAL='nvim'

export PATH="$HOME/.local/bin/flutter/bin:$PATH"
export PATH="$HOME/.local/bin/scripts:$PATH"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"
export FZF_TMUX_OPTS=" -p90%,70% "

source "$HOME/.local/bin/scripts/fzf-git.sh"
source "$HOME/.local/bin/scripts/pomodoro.sh"
source "$HOME/.config/fzf/rose-pine.sh"

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
