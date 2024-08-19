{ pkgs, config, ...}:

{
    # Bootloader.
    boot.loader = {
      timeout = null;
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      grub = {
        efiSupport = true;
        useOSProber = false;
        device = "nodev";
        theme = ../../app/grub-themes/Iofi;
        fontSize = 32;
        extraEntries = ''
            menuentry 'Windows 10' --class windows --class os $menuentry_id_option 'osprober-efi-2E13-F711' {
            	insmod part_gpt
            	insmod fat
            	search --no-floppy --fs-uuid --set=root 2E13-F711
            	chainloader /efi/Microsoft/Boot/bootmgfw.efi
            }
            menuentry 'Void Linux' --class void --class gnu-linux --class gnu --class os $menuentry_id_option 'osprober-gnulinux-simple-870b72dc-aca1-49bf-b53c-e4273fb47d38' {
            	insmod part_gpt
            	insmod ext2
            	search --no-floppy --fs-uuid --set=root 870b72dc-aca1-49bf-b53c-e4273fb47d38
            	linux /boot/vmlinuz-6.6.46_1 root=UUID=870b72dc-aca1-49bf-b53c-e4273fb47d38 ro loglevel=4
            	initrd /boot/initramfs-6.6.46_1.img
            }
        '';
      };
    };
 

}
