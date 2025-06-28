#!/bin/zsh

printf "THIS HAS BEEN DEPRECATED, IT WOULD BE COOL NOT TO USE IT\n"

SYSMAG=$HOME/sysmag

# link documents to doc
ln -sf $HOME/Documents $HOME/doc

# Create config files symlinks
symApps=("helix" "awesome" "kitty" "rofi" "tmux" "picom" "clangd" "btop")

for app in "${symApps[@]}"; do
  printf "Setting config for $app\n"
  ln -sf $SYSMAG/app/$app $HOME/.config/
done

printf "Setting config for ZSH\n"
ln -sf $SYSMAG/app/zsh/.zshrc $HOME/

printf "Setting config for X\n"
ln -sf $SYSMAG/app/x/.xinitrc $HOME/

printf "Setting config for clang-format\n"
ln -sf $SYSMAG/app/clangd/.clang-format $HOME/

mkdir -p ~/.local/share/rofi
printf "Setting config for rofi\n"
ln -sf $SYSMAG/app/rofi/themes/ $HOME/.local/share/rofi/

