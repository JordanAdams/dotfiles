export PATH=./node_modules/.bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

export TERM="xterm-256color"
export EDITOR="nvim"
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000
export HISTDUP=erase
export GOPATH=$HOME/code/go
export ZPLUG_HOME=/usr/local/opt/zplug

source $ZPLUG_HOME/init.zsh
source $HOME/.cargo/env
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/bindings.zsh
source $HOME/.zsh/options.zsh
source $HOME/.zsh/functions.zsh
source $HOME/.zsh/plugins.zsh

[[ -s $HOME/.asdf/asdf.sh ]] && source $HOME/.asdf/asdf.sh
[[ -s $HOME/.asdf/asdf/completions/asdf.bash ]] && source $HOME/.asdf/completions/asdf.bash

# Set title to current dir
case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
