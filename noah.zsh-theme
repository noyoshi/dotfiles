local ret_status="%(?:%{$fg_bold[green]%}•:%{$fg_bold[red]%}•)"
local long="%{$fg_bold[007]%}>>  %{$reset_color%}%{$fg_bold[blue]%}%m%{$reset_color%}"
local in="%{$fg_bold[007]%} </>  %{$reset_color%} %{$fg_bold[cyan]%}%~%{$reset_color%}"
local icon="%{$fb_bold[white]%}⚛ %{$reset_color%}"
local time="%{$fb_bold[white]%}%T%{$reset_color%}"
PROMPT='%{$reset_color%}${ret_status} %{$reset_color%}   ${time}   %{$fg_bold[cyan]%}%n%{$reset_color%}  ${long} ${in} $(git_prompt_info)
=> '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}  ∆  [%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"
