# Git
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gc="git clone $1 $2"
alias gcm="git commit -m "$1""
alias gaa="git add -A ."
alias gpo="git push origin $1"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo="git log --oneline"
alias grhh="git reset --hard HEAD"
alias gcp="git cherry-pick $1"

# Files
alias l="ls -o"
alias la="ls -o -AhX --group-directories-first"
# For Mac
# alias la="ls -o -Ah"
alias j="jump"
alias v='nvim'
alias vim='nvim'

# Tmux
alias tmuxa="tmux attach -t $1"

#DB
alias db="psql -h localhost -p 5432 -U rsacramento -d finances"
