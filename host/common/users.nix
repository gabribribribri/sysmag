{ config, pkgs, inputs, ...}:

{

    imports = [
        inputs.home-manager.nixosModules.default
    ];

    # The default shell is ZSH
    users.defaultUserShell = pkgs.zsh;
    
    users.users.gaybe = {
        isNormalUser = true;
        description = "gaybe";
        useDefaultShell = true;
        extraGroups = [ "networkmanager" "wheel" ];
    };

    home-manager = {
        extraSpecialArgs = { inherit inputs; };
        users."gaybe" = import ../../home/home.nix;
    };

}
