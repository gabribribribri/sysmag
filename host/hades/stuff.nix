{ pkgs, config, ...}:

{
    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
 

    services = {
        # Enable the X11 windowing system.
        enable = true;

        # Enable Awesome WM
        windowManager.awesome = {
            enable = true;
            luaModules = with pkgs.luaPackages; [
                luarocks # is the package manager for Lua modules
                luadbi-mysql # Database abstraction layer
              ];
        };

        displayManager = {
            defaultSession = "none+awesome";
            sddm.enable = true;
            autoLogin = {
                enable = true;
                user = "gaybe";
            };
        };
    };


    # Enable CUPS to print documents.
    services.printing.enable = true;


    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;


    # System version
    system.stateVersion = "23.05";


    # Allow experimental nix features
    nix.settings.experimental-features = [ "flakes" "nix-command" ];


    # Allow bluetooth
    hardware.bluetooth = {
        enable = true; # enables support for Bluetooth
        powerOnBoot = true; # powers up the default Bluetooth controller on boot
    };
}
