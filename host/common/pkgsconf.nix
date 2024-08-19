{ config, pkgs, ...}:

{
    # Enable ZSH
    programs.zsh.enable = true;

    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Allow experimental nix features
    nix.settings.experimental-features = [ "flakes" "nix-command" ];

    # Allow bluetooth
    hardware.bluetooth = {
        enable = true; # enables support for Bluetooth
        powerOnBoot = true; # powers up the default Bluetooth controller on boot
    };

}
