#!/bin/sh


# Create config files symlinks
symApps=("helix" "awesome" "kitty" "rofi" "tmux")

for app in "${symApps[@]}"; do
  ln -sf $HOME/sysmag/app/$app $HOME/.config/
done

# ZSH Config
ln -sf $HOME/sysmag/app/zsh/.zshrc $HOME/
