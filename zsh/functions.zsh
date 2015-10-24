# git
g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}
compdef g=git

function mcd() {
  mkdir -p "$1" && cd "$1";
}

