set -x COLOR_THEME dark
set -x EDITOR vim
set -x GOPATH $HOME/Projects/go
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set fish_greeting
set fish_key_bindings fish_vi_key_bindings

set -x PATH $HOME/.cargo/bin $GOPATH/bin $HOME/.rbenv/bin $PATH
rbenv init - | source
set -x PATH .git/safe/../../bin $HOME/.bin $PATH

alias b="bundle"
alias be="bundle exec"
alias e="$EDITOR"
alias g='git'
alias gs='git status'
alias h="heroku"
alias hrc="heroku run console"
alias ln="ln -v"
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias migrate="rake db:migrate; and db:rollback; and rake db:migrate"
alias mkdir="mkdir -p"
alias s="bundle exec rspec"

function path --description "List all paths"
  for p in $PATH
    echo $p
  end
end

function mcd --description "Mkdir and cd"
  mkdir -p "$argv[1]"; and cd "$argv[1]"
end

function ip --description "What is my IP?"
  dig +short myip.opendns.com @resolver1.opendns.com
end
