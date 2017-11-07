bindkey '^[[a;D' backward-word      # ⌥ ←
bindkey '^[[a;C' forward-word       # ⌥ →
bindkey '^[[s;D' beginning-of-line  # ⌘ ←
bindkey '^[[s;C' end-of-line        # ⌘ →
bindkey '^[[3~'  delete-char        # ⌦

# Bind Up (^[[A) and Down (^[[B) to history-substring-search
if zplug check "zsh-users/zsh-history-substring-search"; then
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
fi
