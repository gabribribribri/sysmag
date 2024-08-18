{ config, pkgs, ...}:

{
    users.users.gaybe = {
        isNormalUser = true;
        description = "gaybe";
        extraGroups = [ "networkmanager" "wheel" ];
    };

}
