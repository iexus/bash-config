eval "$(rbenv init -)"

source ~/.git-completion.bash
source ~/.git-prompt.bash

## Ruby aliases
alias be='bundle exec'
alias wip='bundle exec cucumber -pwip'

## ls aliases
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias lh='ls -alFh'

## Git aliases
alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gb='git blame -CCC'
alias gc='git commit'
alias gca='git commit --amend'
alias gd='git diff'
alias gdw='git diff --word-diff'
alias gcl='git clean -fd'
alias gco='git checkout'
alias gpf='git push --force-with-lease'

alias gl='git_pretty_log'
alias gld='git log -p'
alias gls='git shortlog -sn'
alias gst='git status -sb'

## Java aliases
alias gra='./gradlew'

## Bind for autocomplete
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

git config --global branch.autosetuprebase always
git config --global color.ui auto
git config --global push.default current

# Colour Vars
bold="$(tput bold)"
reset="\001$(tput sgr0)\002"

blue="\001$bold$(tput setaf 4)\002"
cyan="\001$bold$(tput setaf 6)\002"
green="\001$bold$(tput setaf 2)\002"
purple="\001$bold$(tput setaf 5)\002"
red="\001$bold$(tput setaf 1)\002"
white="\001$bold$(tput setaf 7)\002"
yellow="\001$bold$(tput setaf 3)\002"

export PS2="-> "
export PS1="$green\u$reset@$yellow\h$reset:$purple\W$reset$blue\$(__git_ps1 ' (%s)')$reset$PS2"

# Git Log Niceness
_I_=' '
HASH="%C(green)%h%C(reset)"
AGE="%C(yellow)%ar%C(reset)"
AUTHOR="%C(bold blue)%an%C(reset)"
REFS="%C(bold red)%d%C(reset)"
COMMENT="%s"

FORMAT="$HASH$_I_$AGE$_I_$AUTHOR$_I_$REFS $COMMENT"

git_pretty_log() {
  git log --graph --decorate --pretty="tformat:${FORMAT}" $* |
  less -FXRS
}
