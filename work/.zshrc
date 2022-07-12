source ~/.aliases.sh
source ~/.antigen/antigen.zsh
source ~/.secrets.sh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle jump
antigen theme cypher

antigen apply

eval "$(starship init zsh)"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

eval "$(/opt/homebrew/bin/brew shellenv)"

export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=1

export EDITOR=nvim
export DOTFILES="/Users/work/.config"

export NODE_ENV="local"
export NPM_TOKEN=$NPM_TOKEN

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

NPM_PACKAGES="${HOME}/.npm_packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/Users/work/.config/go/bin"
export PATH="$PATH:/Users/work/Library/Python/3.8/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

export npm_config_prefix="$HOME/.npm_packages"

###-begin-pm2-completion-###
### credits to npm for the completion file model
#
# Installation: pm2 completion >> ~/.bashrc  (or ~/.zshrc)
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _pm2_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           pm2 completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _pm2_completion pm2
elif type compctl &>/dev/null; then
  _pm2_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       pm2 completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _pm2_completion + -f + pm2
fi
###-end-pm2-completion-###

export winhost=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')

# if [ ! -n "$(grep -P "[[:space:]]winhost" /etc/hosts)" ]; then

#           printf "%s\t%s\n" "$winhost" "winhost" | sudo tee -a "/etc/hosts"

# fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
