#!/bin/sh

# Syncs the dotfiles to the home directory

cp avery.zsh-theme ~/.oh-my-zsh/custom/themes/avery.zsh-theme
cp .zshrc ~/.zshrc
cp .alacritty.toml ~/.alacritty.toml
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
cp ghostty/config "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
