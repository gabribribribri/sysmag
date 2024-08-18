#!/bin/sh


sudo nixos-rebuild switch -I nixos-config=$HOME/sysmag/hades/all.nix $1
