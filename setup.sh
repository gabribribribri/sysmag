#!/bin/sh

# Make every bash file executable
# -!!!- Local paths so needs to execute in ~/sysmag -!!!-
chmod +x deckhm/install_nix.sh deckhm/install_hm.sh deckhm/hm-switch.sh
chmod +x nixos/init_altgr-weur.sh nixos/rebuild-switch.sh nixos/rebuild-test.sh

# Create config files symlinks
ln -s $HOME/sysmag/config/helix/config.toml $HOME/.config/helix/config.toml # Helix config
ln -s $HOME/sysmag/config/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml # Alacritty config
