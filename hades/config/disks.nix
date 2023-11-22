{ config, pkgs, ...}:

{
    fileSystems."/mnt/Mars" = {
        device = "/dev/disk/by-uuid/f94127c3-dfd8-4bb6-ad3a-3c18c7b89345";
        fsType = "ext4";
        # options = [ "nofail" ];
    };

    fileSystems."/mnt/Jupiter" = {
        device = "/dev/disk/by-uuid/df9d3a2e-3631-4ea5-8620-b3d1af45ef6c";
        fsType = "ext4";
        # options = [ "nofail" ];
    };
}