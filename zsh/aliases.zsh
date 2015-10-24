alias b="bundle"
alias be="bundle exec"
alias e="$EDITOR"
alias h="heroku"
alias ll="ls -al"
alias ln="ln -v"
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias migrate="rake db:migrate db:rollback && rake db:migrate"
alias mkdir="mkdir -p"
alias path='echo $PATH | tr -s ":" "\n"'
alias s="rspec"
alias v="$VISUAL"

[[ -f ~/.zsh/aliases.local ]] && source ~/.zsh/aliases.local

