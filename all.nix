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

            # Include users configuration
            ./users.nix

            # Mars & Jupiter
            ./disks.nix

            # Networking & Locales
            ./nw.nix

        ];
}