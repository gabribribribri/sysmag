{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... } @ inputs: {
    nixosConfigurations.hades = nixpkgs.lib.nixosSystem {
      extraSpecialArgs = {inherit inputs;};

      modules = [
            # Home Manager
            inputs.home-manager.nixosModules.default
            
            # Hardware scan
            host/hades/hardware-configuration.nix

            # Packages
            host/hades/pkgs.nix

            # Packages configuration
            host/hades/pkgsconf.nix

            # Other important things
            host/hades/stuff.nix

            # Include users configuration
            host/common/users.nix


            # Networking & Locales
            host/hades/nw.nix

            # Audio
            host/hades/sound.nix

      ];
    };
  };
}
