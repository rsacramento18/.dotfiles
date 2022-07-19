source ~/.aliases.sh
source ~/.antigen/antigen.zsh
source ~/.secrets.sh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle jump

antigen apply

eval "$(starship init zsh)"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

export EDITOR=nvim
export DOTFILES="/Users/work/.config"

export NODE_ENV="local"
export NPM_TOKEN=$NPM_TOKEN

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY


NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"


bindkey -s ^f "tmux-sessionizer\n"

pfetch
