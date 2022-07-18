#Git
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

# Directories
alias home="cd ~"
alias work="cd ~/work"
alias personal="cd ~/personal"



# Files
alias l="ls -o -h"
alias la="ls -o -AhX --group-directories-first"
alias j="jump"
alias v='nvim'
alias vim='nvim'

# Tmux
alias tmuxa="tmux attach -t $1"

#Project
alias build="export NODE_ENV=production && npm run build && export NODE_ENV=local"
alias serve="npm run serve"

#SSH into aws
alias sshaws="ssh -v -i /home/sacramentor/Documents/key.pem ec2-user@$1"

#Gentokken
#alias token="xclip -selection clibboard $(node ~/work/gentoken/tokengen.js $1 $2)"

#local run
alias localrun="~/work/webeo_tools/pm2/WSL/build.sh"
alias testSiteOn="live-server ~/work/DynamicsTestSites/static/dist"

#copy backups to inside docker container db
alias dbcopy="docker cp ~/Documents/dbBackups/. b085ecbcc925:/var/opt/mssql/data"
