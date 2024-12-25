{ pkgs, config, ... } :

{
    boot.supportedFilesystems = [ "ntfs" ];

    fileSystems."/mnt/Jupiter" = {
      device = "/dev/sda1";
      # label = "Jupiter";
      fsType = "ext4";
    };

    fileSystems."/mnt/Venus" = {
      device = "/dev/nvme1n1p2";
      # label = "Venus";
      fsType = "ntfs";
      options = [ "rw" "uid=1000"];
    };
}
