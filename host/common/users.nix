{ config, pkgs, ...}:

{
    users.users.gaybe = {
        isNormalUser = true;
        description = "gaybe";
        extraGroups = [ "networkmanager" "wheel" ];
    };

    home-manager = {
        extraSpecialArgs = { inherit inputs; };
        users."gaybe" = import ../../home/home.nix
    }

}
