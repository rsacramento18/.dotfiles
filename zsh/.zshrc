source ~/.aliases.sh
source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle jump
antigen theme cypher

antigen apply

export DISPLAY=:0
export EDITOR=nvim
PATH="$HOME/.local/bin:$PATH"
export npm_config_prefix="$HOME/.local"
export PATH="/usr/local/opt/libpq/bin:$PATH"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
