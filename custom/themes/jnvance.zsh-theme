# Mod from robbyrussel

# PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT=''

if [ -z "$MACHINE_PREFIX" ]
then
    :
else
    PROMPT+='%(?:%{$fg_bold[blue]%}($MACHINE_PREFIX)%{$reset_color%} '
fi

PROMPT+="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
# PROMPT+=' %{$fg[cyan]%}%d%{$reset_color%} $(git_prompt_info)'
PROMPT+=' %{$fg[cyan]%}%d%{$reset_color%} '

if [ -z "$NO_GIT_PROMPT" ]
then
    # PROMPT+='$(git_prompt_info)'
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

