setopt AUTO_CD
setopt CDABLE_VARS
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY

autoload -U compinit && compinit

DIRSTACKSIZE=10
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^K" kill-line
bindkey "^P" history-search-backward
bindkey "^R" history-incremental-search-backward
bindkey -v

source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/prompt.zsh

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

