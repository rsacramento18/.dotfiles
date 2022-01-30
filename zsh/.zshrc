source ~/.aliases.sh
source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle jump
antigen bundle ~/.antigen/bundles/zsh-theme my-theme.zsh-theme

antigen apply

export EDITOR=nvim
PATH="$HOME/.local/bin:$PATH"
export npm_config_prefix="$HOME/.local"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
