alias a="atom"
alias a.="atom ."

alias v="nvim"
alias v.="nvim ."

alias e="v"
alias e.="v"

alias r="ranger"

alias vim="nvim"
alias git="hub"
alias md="macdown"
alias tmux="tmux -u"

alias zshrc="v -c 'cd ~/.zsh' ~/.zshrc"
alias aliases="v -c 'cd ~/.zsh' ~/.zsh/aliases.zsh && source ~/.zshrc"
alias options="v -c 'cd ~/.zsh' ~/.zsh/options.zsh && source ~/.zshrc"
alias functions="v -c 'cd ~/.zsh' ~/.zsh/functions.zsh && source ~/.zshrc"

alias vimrc="v -c 'cd ~/.config/nvim' ~/.config/nvim/init.vim"
alias vimup="v -c 'PlugInstall' -c 'only'"

alias tab="open . -a iterm"
alias l="ls -lah"
alias f="fzf"

alias pd="pages start dev"
alias pdp="pages start dev --ppp local"
alias pt="pages test"
alias ptu="pages test unit"

alias ts="tmux ls -F #{session_name} | fzf | xargs tmux attach -t"
alias tw="tmux ls -F #{window_name} | fzf | xargs tmux select-window -t"

alias l="exa -la"
alias ls="l"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias cfprod="cf login -a api.cf.paas.bskyb.com -u DL-DigitalEngagementTribe -p B0njour!"
alias cfstage="cf login -a api.cf.stage-paas.bskyb.com -u DL-DigitalEngagementTribe -p B0njour!"
