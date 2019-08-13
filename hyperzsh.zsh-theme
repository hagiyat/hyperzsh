# The prompt
PROMPT='$(_user_host)%B%{$fg[blue]%}%c%b$(git_prompt_info)%{$reset_color%}%{$fg[magenta]%}${_return_status}%{$fg[white]%}$(git_prompt_status) ❱❱%{$reset_color%} '

local _return_status="%{$fg[red]%}%(?..⍉ )%{$reset_color%}"

function _user_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    me="%n@%m"
  elif [[ $LOGNAME != $USER ]]; then
    me="%n"
  fi
  if [[ -n $me ]]; then
    echo "%{$fg[cyan]%}$me%{$reset_color%}:"
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%B✱%b"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%B§%b"
ZSH_THEME_GIT_PROMPT_AHEAD="%B⚡%b"

ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT="%{$fg[green]%}"
ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM="%{$fg[yellow]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG="%{$fg[red]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL="%{$fg[white]%}"
