# ----- AVERY'S MAC TERMINAL CONFIG -----

# Remove user in prompt
export DEFAULT_USER="$(whoami)"

# Set locale
export LANG=en_US.UTF-8

# ----- oh-my-zsh -----

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avery"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# ----- rust -----

source $HOME/.cargo/env

# ----- nvm -----

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# ----- yarn -----

export PATH="$(yarn global bin):$PATH"

# ----- aliases -----

alias aa="git add --all"
alias ca="git commit --amend --no-edit"
alias gcm="git checkout main"
# alias py="uv run python"
alias stat="git status"
alias env="dotenv-vault"
# alias gitclear="BRANCH=(git branch --show-current) && gcm && git pull && git branch -d $BRANCH"
# alias gitmain="BRANCH=(git branch --show-current) && gcm && git pull && git checkout $BRANCH"

. "$HOME/.cargo/env"

# pnpm
export PNPM_HOME="/Users/avery/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# sst
export PATH=/Users/avery/.sst/bin:$PATH

# bun completions
[ -s "/Users/avery/.bun/_bun" ] && source "/Users/avery/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Added by Antigravity
export PATH="/Users/avery/.antigravity/antigravity/bin:$PATH"

. "$HOME/.local/bin/env"

export UV_ENV_FILE=".env"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/avery/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# >>> chapter-agents >>>
# Prefer the current worktree copy, fall back to main checkout via
# `git rev-parse --git-common-dir`. Re-sources on every invocation so
# edits to chapter-agents.sh are picked up immediately.
chapter-agents() {
  local script toplevel common_dir main_root
  toplevel="$(git rev-parse --show-toplevel 2>/dev/null)"
  if [[ -n "$toplevel" && -f "$toplevel/chapter-agents/chapter-agents.sh" ]]; then
    script="$toplevel/chapter-agents/chapter-agents.sh"
  else
    common_dir="$(git rev-parse --git-common-dir 2>/dev/null)"
    if [[ -n "$common_dir" ]]; then
      main_root="$(dirname "$(realpath "$common_dir")")"
      [[ -f "$main_root/chapter-agents/chapter-agents.sh" ]] && script="$main_root/chapter-agents/chapter-agents.sh"
    fi
  fi
  if [[ -z "${script:-}" ]]; then
    echo "chapter-agents: must be run from inside a Chapter checkout" >&2
    return 1
  fi
  source "$script"
  _ca_dispatch "$@"
}
# <<< chapter-agents <<<
