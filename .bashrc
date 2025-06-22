source ~/.env
source <(kubectl completion bash)
complete -o default -F __start_kubectl k
complete -C /usr/bin/terraform tf

GREEN="\[\033[0;32m\]"
PURPLE="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
RESTORE="\[\033[0m\]"

PS1="\n\[${GREEN}\]\u@\h"
PS1+="\[${YELLOW}\]:\w "
PS1+="\[${PURPLE}\]$(__git_ps1 " (%s)")"
PS1+="\[${RESTORE}\]\n\$ "

alias ls="ls --color=auto"
alias ll="ls -alF"

alias gti="git"
alias tgi="git"
alias igt="git"
alias itg="git"
alias tig="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m "
alias gp="git push"
alias tf="terraform"
alias k='kubectl'

function ap() {
    ansible-playbook --inventory hosts -v $1
}
