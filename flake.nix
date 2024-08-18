{
  description = "MY NIX FLAKE HOME CONFIG YES YES";

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

            # All Commons.
            host/common/all.nix

            # Hardware scan
            host/hades/hardware-configuration.nix
      ];
    };
  };
}
