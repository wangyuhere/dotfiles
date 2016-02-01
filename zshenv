export CLICOLOR=1
export EDITOR=$VISUAL
export GOPATH=$HOME/Projects/go
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="$HOME/.bin:$GOPATH/bin:/usr/local/sbin:$PATH"
export PATH=".git/safe/../../bin:$PATH"
export VISUAL=vim

if which rbenv &>/dev/null ; then
  eval "$(rbenv init - --no-rehash)"
fi

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local

