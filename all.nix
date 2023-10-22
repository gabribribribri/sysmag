{ config, pkgs, ...}:

{
    imports =
        [
            
            # Hardware scan
            /etc/nixos/hardware-configuration.nix

            # Packages
            ./pkgs.nix

            # Other important things
            ./stuff.nix

            # Set fish default shell
            ./fish.nix

        ];
}