{ pkgs, config, ...}:

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
         theme = ../../home/app/grub-themes/Iofi;
      };
    };
 

}
