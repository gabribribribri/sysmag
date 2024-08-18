{ config, pkgs, inputs, ...}:

{
    imports =
        [
            # Home Manager
            inputs.home-manager.nixosModules.default
            
            # Hardware scan
            ./hardware-configuration.nix

            # Packages
            ./pkgs.nix

            # Packages configuration
            ./pkgsconf.nix

            # Other important things
            ./stuff.nix

            # Include users configuration
            ../../users.nix

            # Mars & Jupiter
            # ./disks.nix

            # Networking & Locales
            ./nw.nix

            # Audio
            ./sound.nix

            # Nvidia drivers configuration
            # ./drivers.nix

        ];

        
        home-manager = {
            extraSpecialArgs = { inherit inputs; };
            users = {
                "gaybe" = import ../../home/home.nix;
            };
        };
        
}
