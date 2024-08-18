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
      specialArgs = {inherit inputs;};

      modules = [
            # Home Manager
            inputs.home-manager.nixosModules.default        
            # Packages
            host/common/pkgs.nix
            # Packages configuration
            host/common/pkgsconf.nix
            # Include users configuration
            host/common/users.nix
            # Networking & Locales
            host/common/nw.nix
            # Audio
            host/common/sound.nix

            # Hardware scan
            host/hades/hardware-configuration.nix
            # Other important things
            host/hades/stuff.nix

      ];
    };
  };
}
