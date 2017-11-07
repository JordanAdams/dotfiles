function get_dir () {
  echo "${PWD/$HOME/~}"
}

function git_prompt () {
  if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1; then
    echo "on %F{blue}$(current_branch)%f $(parse_git_dirty)"
  fi
}

ZSH_THEME_GIT_PROMPT_DIRTY='%F{red}✗%f'
ZSH_THEME_GIT_PROMPT_CLEAN='%F{green}✓%f'

_newline=$'\n'

PROMPT='${_newline}%F{004}╭%f %F{yellow}$(get_dir)%f $(git_prompt)${_newline}%F{004}╰─>%f '
