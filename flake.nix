{
    description = "MY NIX FLAKE HOME CONFIG YES YES";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };


        hyprland.url = "github:hyprwm/Hyprland";
        hyprland-plugins = {
            url = "github:hyprwm/hyprland-plugins";
            inputs.hyprland.follows = "hyprland";
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

                # AMD Drivers
                host/hades/drivers.nix
                # Jupiter & Venus
                host/hades/parts.nix
                # Bootloader Configuration
                host/hades/boot.nix
                # Hardware scan
                host/hades/hardware-configuration.nix

            ];
        };
    };
}
