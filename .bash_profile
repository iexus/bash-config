 [ -r ~/.bashrc ] && . ~/.bashrc

# Autojump fun
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export EDITOR=vim

# For a more secure brew
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_NO_ANALYTICS=1

# For brew putting things in sbin
export PATH="/usr/local/sbin:$PATH"

# Things I've put in tools
export PATH="$PATH:~/tools"

# Go
export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"
