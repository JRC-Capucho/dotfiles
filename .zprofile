env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env


# Aliases
alias l="exa -lh --color --icons --git"
alias ls='exa --color --icons'
alias v='NVIM_APPNAME=nvim nvim'
alias lv='NVIM_APPNAME=lazyvim nvim'
alias lg="lazygit"
alias ld="lazydocker"
alias c='clear'
alias d='docker'
alias g='git'

alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"
alias tkill="for s in \$(tmux list-sessions | awk '{print \$1}' | rg ':' -r '' | fzy); do tmux kill-session -t \$s; done;"
