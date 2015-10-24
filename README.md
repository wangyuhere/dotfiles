# My dotfiles

## Install

```shell
# use zsh as default shell
chsh -s $(which zsh)

git clone git@github.com:wangyuhere/dotfiles.git

# install rcm to manage the dotfiles
brew tap thoughtbot/formulae
brew install rcm

# install all dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup
```

## Thanks

- Inspired by [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles)
- [Customize your ZSH prompt with
  vcs_info](http://arjanvandergaag.nl/blog/customize-zsh-prompt-with-vcs-info.html)

