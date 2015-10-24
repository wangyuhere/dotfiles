export CLICOLOR=1
export EDITOR=$VISUAL
export PATH="$HOME/.bin:/usr/local/sbin:$PATH"
export PATH=".git/safe/../../bin:$PATH"
export VISUAL=vim

if which rbenv &>/dev/null ; then
  eval "$(rbenv init - --no-rehash)"
fi

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local

