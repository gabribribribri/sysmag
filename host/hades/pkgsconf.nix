{ config, pkgs, ...}:

{

		# Unsecure packages permitted
    nixpkgs.config.permittedInsecurePackages = [
        "electron-24.8.6"
    ];

		# make Steam usable
    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };
}
