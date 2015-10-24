setopt PROMPT_SUBST

autoload -Uz colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats " %b"

precmd() {
  vcs_info
}

PROMPT='${SSH_CONNECTION+"%{$fg[green]%}%n@%m:"}%{$fg[blue]%}${PWD/#$HOME/~}%{$fg[yellow]%}${vcs_info_msg_0_}%{$reset_color%} %# '

