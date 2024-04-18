#!/bin/sh


# Create config files symlinks
symApps=("helix" "awesome" "kitty" "rofi" "tmux" "picom")

for app in "${symApps[@]}"; do
  ln -sf $HOME/sysmag/app/$app $HOME/.config/
done

# ZSH Config
ln -sf $HOME/sysmag/app/zsh/.zshrc $HOME/

# X Config
ln -sf $HOME/sysmag/app/x/.xinitrc $HOME/

# Rofi Themes
mkdir -p ~/.local/share/rofi
ln -sf $HOME/sysmag/app/rofi/themes/ $HOME/.local/share/rofi/
