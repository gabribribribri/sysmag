#!/bin/sh

# Make every bash file executable
# -!!!- Local paths so needs to execute in ~/sysmag -!!!-
chmod +x deck/install_nix.sh deck/install_hm.sh deck/hm-switch.sh
chmod +x hades/init_altgr-weur.sh hades/rebuild-switch.sh hades/rebuild-test.sh

# Create config files symlinks
symApps=("helix" "awesome" "kitty" "rofi")

for app in "${symApps[@]}"; do
  ln -s $HOME/sysmag/config/$app $HOME/.config/
done
