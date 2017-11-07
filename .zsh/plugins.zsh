zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "caarlos0/zsh-open-pr"
zplug "changyuheng/zsh-interactive-cd"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "lib/spectrum", from:oh-my-zsh
zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh
zplug "chriskempson/base16-shell", use:scripts/base16-gruvbox-dark-hard.sh
zplug "~/.zsh/themes", use:jordanadams.zsh-theme, from:local, as:theme

# Update ZSH plugins
if ! zplug check --verbose; then
  if read -q '?Install (Y/n)? '; then
    echo "\n\n"
    zplug install
  fi
fi

# Load ZSH Plugins
zplug load
