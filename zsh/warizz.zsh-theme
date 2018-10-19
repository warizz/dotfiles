date_time="%{$fg_bold[yellow]%}%W %{$reset_color%}%T"
user="%{$fg_bold[green]%}%n%{$reset_color%}"
dir="%{$fg[cyan]%}%c%{$reset_color%}"
ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
PROMPT='${date_time} ${user} in ${dir} $(git_prompt_info) ${ret_status} %{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg_bold[blue]%}%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}?"
