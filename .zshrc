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

# ----- aliases -----

alias aa="git add --all"
alias ca="git commit --amend --no-edit"
alias gcm="git checkout main"
alias stat="git status"

export UV_ENV_FILE=".env"

# Install Rust
# Install NVM
# Install bun
# install uv
