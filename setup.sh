#!/bin/sh

# Make every bash file executable
# -!!!- Local paths so needs to execute in ~/sysmag -!!!-
chmod +x deck/install_nix.sh deck/install_hm.sh deck/hm-switch.sh
chmod +x hades/init_altgr-weur.sh hades/rebuild-switch.sh hades/rebuild-test.sh

# Create config files symlinks
ln -s $HOME/sysmag/config/helix/ $HOME/.config/ # Helix config
ln -s $HOME/sysmag/config/awesome $HOME/.config/ # Awesome config
ln -s $HOME/sysmag/config/kitty $HOME/.config/ # Kitty config
ln -s $HOME/sysmag/config/rofi $HOME/.config/ # Rofi config
