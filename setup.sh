#!/bin/zsh

# link documents to doc
ln -sf $HOME/Documents $HOME/doc

# Create config files symlinks
symApps=("helix" "awesome" "kitty" "rofi" "tmux" "picom")

for app in "${symApps[@]}"; do
  printf "Setting config for $app\n"
  ln -sf $SYSMAG/app/$app $HOME/.config/
done

printf "Setting config for ZSH\n"
ln -sf $SYSMAG/app/zsh/.zshrc $HOME/

printf "Setting config for X\n"
ln -sf $SYSMAG/app/x/.xinitrc $HOME/

mkdir -p ~/.SYSMAGal/share/rofi
printf "Setting config for rofi\n"
ln -sf $SYSMAG/app/rofi/themes/ $HOME/.SYSMAGal/share/rofi/

