function machine_prefix()
{
    [ ! -z "$MACHINE_PREFIX" ] && echo -n "%{$fg_bold[blue]%}($MACHINE_PREFIX)%{$reset_color%} "
}

PROMPT='$(machine_prefix)%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%~%{$reset_color%}'

if [ -z "$NO_GIT_PROMPT" ]
then
    PROMPT+=' $(git_prompt_info)'
else
    PROMPT+=' '
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
