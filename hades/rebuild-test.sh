#!/bin/sh

# Github token
#github_pat_11A2XPUHI0f087WVjm85CD_OOpLWruxNwGJwKNxRCwzAA1Z9t7Z9JhTvTwKX1R7yc1J5AFC5PIEE

sudo nixos-rebuild test -I nixos-config=$HOME/sysmag/hades/config/all.nix $1