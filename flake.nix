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
        ./host/hades/all.nix
        ./home/app.nix
        inputs.home-manager.nixosModules.default
      ];
    };
  };
}
