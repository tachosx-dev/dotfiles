# Load .aliasrc
[ -f "${ZDOTDIR}/.aliasrc" ] && source "${ZDOTDIR}/.aliasrc"

# Load .optionrc
[ -f "${ZDOTDIR}/.optionrc" ] && source "${ZDOTDIR}/.optionrc"

# History
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=1000
SAVEHIST=10000

# Completion
zstyle :compinstall filename '$ZDOTDIR/.zshrc'

autoload -Uz compinit
compinit

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[1;5D' beginning-of-line
bindkey '^[[1;5C' end-of-line
