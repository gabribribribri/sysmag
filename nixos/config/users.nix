{ config, pkgs, ...}:

{
    users.users.gaybe = {
        isNormalUser = true;
        description = "gaybe";
        extraGroups = [ "networkmanager" "wheel" ];
    };

    # Enable automatic login for the user.
    services.xserver.displayManager.autoLogin.enable = true;
    services.xserver.displayManager.autoLogin.user = "gaybe";
}