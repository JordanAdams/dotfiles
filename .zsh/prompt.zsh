LOW_BATTERY_THRESHOLD=20
NEWLINE='\n'
ICON_GITHUB="\ue725"
ICON_LOW_BATTERY="\uf579"
ICON_MUSIC="\ufc58"

current_branch() {
  echo $(git branch | grep '* ' | sed 's/* //')
}
prompt_dir() {
  if [[ $(pwd) == $HOME ]]
  then
    echo "~"
  else
    basename=$(pwd | xargs basename | sed 's/^\///')
    parent_path=$(cd .. && pwd | sed 's/\/$//' | sed 's,^'"$HOME"',~,')

    echo "%F{008}$parent_path%f/$basename"
  fi
}

git_is_clean() {
  [[ -z $(git status -s) ]]
}

is_git_directory() {
  [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1
}

battery_level() {
  pmset -g batt | grep -Eo "\d+%" | cut -d% -f1
}

prompt_git() {
  if is_git_directory && git_is_clean; then
      echo " %F{008}on%f %F{green}$(current_branch) $ICON_GITHUB%f"
  elif is_git_directory; then
      echo " %F{008}on%f %F{red}$(current_branch) $ICON_GITHUB%f"
  fi
}

prompt_rainbow_arrow() {
  echo "%F{red}⟫%F{yellow}⟫%F{green}⟫%F{blue}⟫%F{098}⟫%f"
}

battery_low() {
  [[ $(battery_level) -lt $LOW_BATTERY_THRESHOLD ]]
}

prompt_mode() {
  [[ $1 != "" ]] && echo " %F{008}(%F{003}$1%F{008})%f"
}

prompt_main() {
  echo "$(prompt_dir)$(prompt_git)$(prompt_mode $1)"
}

prompt_secondary() {
  if (battery_low); then
    echo "$NEWLINE %F{008} | %F{red}$ICON_LOW_BATTERY %F{008}(low battery)%f"
  fi
}

prompt_left() {
  echo "$NEWLINE $(prompt_main)$(prompt_secondary)$NEWLINE $(prompt_rainbow_arrow) "
}

precmd() {
  PROMPT="$(prompt_left)"
}

zle-keymap-select() {
  PROMPT="$(prompt_left)"
  [[ $KEYMAP = vicmd ]] && PROMPT="$(prompt_left NORMAL)"
  () { return $__prompt_status }
  zle reset-prompt
}
zle-line-init() {
  typeset -g __prompt_status="$?"
}

zle -N zle-keymap-select
zle -N zle-line-init
