export GOPATH=$HOME/.gopath
export GOBIN=$HOME/.gopath/bin

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$HOME/.asdf/shims:$PATH"
export PATH="$GOBIN:$PATH"

export LC_CTYPE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8@currency=EUR.UTF-8
export TERM="xterm-256color"
export EDITOR="nvim"
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000000
export SAVEHIST=10000000


export FZF_DEFAULT_COMMAND='fd -t f'
export KEYTIMEOUT=1
export CFLAGS="-I$(brew --prefix openssl)/include" \
export LDFLAGS="-L$(brew --prefix openssl)/lib" \

# Enable Vi bindings
bindkey -v

# Boot Cargo
[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env

# Boot FZF
[[ -f $HOME/.fzf.zsh ]] && source ~/.fzf.zsh

# gcloud
[[ -f $HOME/.google-cloud-sdk/completion.zsh.inc ]] && source $HOME/.google-cloud-sdk/completion.zsh.inc
[[ -f $HOME/.google-cloud-sdk/path.zsh.inc ]] && source $HOME/.google-cloud-sdk/path.zsh.inc

# Util Scripts
[[ -d $HOME/code/bin ]] && export PATH=$HOME/code/bin:$PATH

# gnu tools
[[ -d "/usr/local/opt/gnu-sed/libexec/gnubin" ]] && export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# nvim
[[ -d "/usr/local/bin/nvim/bin" ]] && export PATH="/usr/local/bin/nvim/bin:$PATH"

# Local .zshrc
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

# Source all the configs
for f in $HOME/.zsh/*.zsh; source $f

