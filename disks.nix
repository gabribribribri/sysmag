{ config, pkgs, ...}:

{
    fileSystems."/mnt/Mars" = {
        device = "/dev/disk/by-uuid/8d06421a-8954-40db-b53e-2d082cfe460b";
        fsType = "ext4";
        options = [ "nofail" ];
    };

    fileSystems."/mnt/Jupiter" = {
        device = "/dev/disk/by-uuid/3241de8b-34ee-487f-968f-439e3f6e3b0e";
        fsType = "ext4";
        options = [ "nofail" ];
    };
}