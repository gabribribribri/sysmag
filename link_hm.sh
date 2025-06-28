#!/bin/sh

mkdir -p ~/.config/home-manager
trash ~/.config/home-manager/flake.nix
trash ~/.config/home-manager/flake.lock
ln -sf ~/sysmag/home/flake.nix ~/.config/home-manager/
ln -sf ~/sysmag/home/flake.lock ~/.config/home-manager/
