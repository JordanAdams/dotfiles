ZR_CONFIG=$HOME/.config/zr.zsh

if [[ ! -f $ZR_CONFIG ]] || [[ ~/.zsh/plugins.zsh -nt $ZR_CONFIG ]]; then
  zr \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-history-substring-search \
    zsh-users/zsh-syntax-highlighting \
    caarlos0/zsh-open-pr \
    changyuheng/zsh-interactive-cd \
    robbyrussell/oh-my-zsh.git/plugins/git \
    robbyrussell/oh-my-zsh.git/plugins/history \
    robbyrussell/oh-my-zsh.git/lib/spectrum.zsh \
    changyuheng/fz \
    rupa/z.git/z.sh \
    ael-code/zsh-colored-man-pages \
    > $ZR_CONFIG
fi

source $ZR_CONFIG
