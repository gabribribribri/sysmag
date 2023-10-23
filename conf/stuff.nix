{ pkgs, config, ...}:

{
    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the KDE Plasma Desktop Environment.
    services.xserver.displayManager.sddm.enable = true;
    services.xserver.desktopManager.plasma5.enable = true;

    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # System version
    system.stateVersion = "23.05";

    ### FISH SHELL THINGS
    # Enable fish
    programs.fish.enable = true;
    # Set fish default
    users.defaultUserShell = pkgs.fish;
    # gaybe uses default
    users.users.gaybe.useDefaultShell = true;

    # Allow experimental nix features
    nix.settings.experimental-features = [ "nix-command" ];
    

    # Allow bluetooth
    hardware.bluetooth.enable = true; # enables support for Bluetooth
    hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot

}