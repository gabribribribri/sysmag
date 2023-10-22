{ config, pkgs, ...}:

{
    fileSystems."/mnt/Mars" = {
        device = "/dev/disk/by-uuid/f94127c3-dfd8-4bb6-ad3a-3c18c7b89345";
        fsType = "ext4";
        # options = [ "nofail" ];
    };

    # fileSystems."/mnt/Jupiter" = {
    #     device = "/dev/disk/by-uuid/3241de8b-34ee-487f-968f-439e3f6e3b0e";
    #     fsType = "ext4";
    #     # options = [ "nofail" ];
    # };
}