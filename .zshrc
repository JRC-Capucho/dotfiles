eval "$(starship init zsh)"

eval "$(zoxide init zsh)"


# HIGHLIGHTING 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# ASDF
. /opt/asdf-vm/asdf.sh


## AUTOCOMPLETION
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion::complete*' gain-privileges 1

# ALIASES
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'
alias tmuxconf='$EDITOR $ZSH_TMUX_CONFIG'

alias ls='eza --icons -F -H --group-directories-first --git -1'
alias la="ls -A"
alias ll="ls -alF"
alias lla="ll -A"

alias vim="nvim"

alias g="git"
