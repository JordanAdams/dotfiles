# ==============================
# Replacements
# ==============================
alias rm="safe-rm"
alias grep="grep --color"
alias ls="exa -la --git"
alias akamai="sudo akamai"
alias xargs="gxargs"
alias tail="gtail"
alias tar="gtar"
alias sed="gsed"
alias tf="terraform"
alias tfa="terraform apply"
alias tfp="terraform plan"
alias tfw="terraform workspace"


# ==============================
# Command Shorthand
# ==============================
alias v="nvim"
alias e="$EDITOR"
alias c='clear'
alias r="ranger"
alias t="tb"
alias j="jq"
alias md="macdown"
alias dc="docker-compose"
alias l="ls"
alias f="fzf"
alias kc="kubectl"
alias ddocs='devdocs-cli'
alias ap="ansible-playbook"

alias mk='mkdir'
alias mkp="mkdir -p"

alias ta="tmux attach"
alias td="tmux detach"
alias tn="tmux new-session"
alias tns="tmux new-session -s $1"
alias tp="tmuxp"

alias urlstatus="curl -o /dev/null --silent --head -Iw '%{http_code} - %{url_effective}\n'"

# ==============================
# Config Shortcuts
# ==============================
alias zshrc="e -c 'cd $HOME/.zsh' $HOME/.zshrc && source $HOME/.zshrc"
alias aliases="e -c 'cd $HOME/.zsh' $HOME/.zsh/aliases.zsh && source $HOME/.zsh/aliases.zsh"
alias vimrc="e -c 'cd $HOME/.config/nvim' $HOME/.config/nvim/init.lua"
alias brewfile="e $HOME/Brewfile && brew bundle --file=$HOME/Brewfile"
alias sshconfig="e $HOME/.ssh/config"
alias gitconfig="e $HOME/.gitconfig"
alias hosts="sudo nvim /etc/hosts"
alias tmuxrc="e $HOME/.tmux.conf"

# ==============================
# Emoji & Friends
# ==============================
alias shrug="echo '¯\\_(ツ)_/¯'"
alias lenny="echo '( ͡° ͜ʖ ͡°)'"
alias wut="echo 'ಠ_ಠ'"

# ==============================
# Other
# ==============================
alias port="lsof -i -n -P | grep TCP | grep $1"
alias alert='osascript -e "display notification $2 with title $1"; afplay /System/Library/Sounds/Glass.aiff'
