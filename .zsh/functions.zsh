fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

copy-dotfiles() {
  cp    $HOME/.tmux.conf                      $HOME/.dotfiles/
  cp    $HOME/.zshrc                          $HOME/.dotfiles/
  cp -r $HOME/.zsh/                           $HOME/.dotfiles/.zsh
  cp    $HOME/.config/alacritty/alacritty.yml $HOME/.dotfiles/.config/alacritty/
  cp    $HOME/.config/nvim/init.vim           $HOME/.dotfiles/.config/nvim/
  cp -r $HOME/.config/nvim/config/            $HOME/.dotfiles/.config/nvim/config/
} 
