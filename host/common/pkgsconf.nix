{ config, pkgs, ...}:

{

    # Bootloader.
    boot.loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      grub = {
         efiSupport = true;
         useOSProber = true;
         device = "nodev";
      };
    };
 

    services = {
        # Enable the X11 windowing system.
        xserver.enable = true;

        # Enable Awesome WM
        xserver.windowManager.awesome = {
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
