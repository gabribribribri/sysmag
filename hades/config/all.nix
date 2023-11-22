{ config, pkgs, ...}:

{
    imports =
        [
            
            # Hardware scan
            /etc/nixos/hardware-configuration.nix

            # Packages
            ./pkgs.nix

            # Packages configuration
            ./pkgsconf.nix

            # Other important things
            ./stuff.nix

            # Include users configuration
            ./users.nix

            # Mars & Jupiter
            ./disks.nix

            # Networking & Locales
            ./nw.nix

            # Audio
            ./sound.nix

            # Nvidia drivers configuration
            ./drivers.nix

        ];
}