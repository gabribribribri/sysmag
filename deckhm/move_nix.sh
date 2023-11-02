#!/bin/sh

# -!!!- THIS SCRIPT IS EXTREMLY DANGEROUS !!! THINK WITH U BREIN B4 USING IT -!!!-

# copy /nix to ~/nix
sudo cp --verbose /nix /home/deck/nix

# give ~/nix to root
sudo chown -R root:root /home/deck/nix 

# give permissions to root
sudo chmod +rwx /home/deck/nix

# delete everything in /nix
sudo rm -rf /nix

# create symlink
sudo ln -s /home/deck/nix /nix
