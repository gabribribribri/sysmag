{ config, pkgs, ...}:

{

    # Workspace configuration
    # imports = [ ../../kzth.nix ];
    
		# Unsecure packages permitted
    nixpkgs.config.permittedInsecurePackages = [
        "electron-24.8.6"
    ];
    ### ZSH CONFIGURATION ###		
    programs.zsh = {
      enable = true;
      shellInit = "../app/zsh/.zshrc";
    };

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
