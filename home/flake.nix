{
  description = "Gaybe's home-manager configuration flake";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons"; # Or github:rycee/nur-expressions?dir=pkgs/firefox-addons
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    { nixpkgs, home-manager, firefox-addons, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations."gaybe" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          /home/gaybe/sysmag/home/home.nix
        ];
        extraSpecialArgs = {
          inherit firefox-addons;
        };
      };
    };
}
