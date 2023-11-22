{ config, pkgs, ...}:

{
    # Workspace configuration
    imports = [ /home/gaybe/sysmag/config/nix/kzth.nix ];
    
		# Unsecure packages permitted
    nixpkgs.config.permittedInsecurePackages = [
        "electron-24.8.6"
    ];

    # Set zsh default
    users.defaultUserShell = pkgs.zsh;
    # gaybe uses default
    users.users.gaybe.useDefaultShell = true;

		# make Steam usable
    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };
}
