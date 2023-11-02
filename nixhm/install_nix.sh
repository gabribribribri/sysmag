#!/bin/sh

# Removing read-only from file system
sudo btrfs property set -ts / ro false

# Installing nix package manager
sh <(curl -L https://nixos.org/nix/install) --daemon
