# avery.zsh-theme
#
# Author: Avery Pelle

# virtualenv settings
VIRTUAL_ENV_DISABLE_PROMPT=1 # disable default virtualenv prompt
VIRTUAL_ENV_PROMPT_PREFIX=" ${fg[green]}‹${fg[yellow]}"
VIRTUAL_ENV_PROMPT="\${\${VIRTUAL_ENV:t}%-*}"
VIRTUAL_ENV_PROMPT_SUFFIX="${fg[green]}›%{$reset_color%}"

virtual_env_prompt() {
    [[ -n "${VIRTUAL_ENV:-}" ]] || return
    echo "${VIRTUAL_ENV_PROMPT_PREFIX}${VIRTUAL_ENV_PROMPT}${VIRTUAL_ENV_PROMPT_SUFFIX}"
}

# Construct the prompt
PS1="\$(virtual_env_prompt)"
PS1+="${fg[blue]}%~" # current directory
PS1+="\$(git_prompt_info)"
PS1+="${fg[cyan]}%(!.#.»)" # prompt character
PS1+="%{$reset_color%} "

PS2="%{$fg[red]%}\ %{$reset_color%}"

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" ${fg[blue]}(${fg[green]}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${fg[yellow]}*"
ZSH_THEME_GIT_PROMPT_SUFFIX="${fg[blue]})%{$reset_color%}"
