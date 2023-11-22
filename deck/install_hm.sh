#!/bin/sh

# Adding the correct channel
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager

# Updating the channel
nix-channel --update

# Run the Home Manager installation command and create the first Home Manager generation
nix-shell '<home-manager>' -A install

# If you do not plan on having Home Manager manage your shell configuration then you must source the
source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
