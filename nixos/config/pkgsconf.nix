{ config, pkgs, ...}:

{

		# Unsecure packages permitted
    nixpkgs.config.permittedInsecurePackages = [
        "electron-24.8.6"
    ];

		# Steam packages
    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };

		
    ### FISH SHELL THINGS
    # Enable fish
    programs.fish.enable = true;
    # Set fish default
    users.defaultUserShell = pkgs.fish;
    # gaybe uses default
    users.users.gaybe.useDefaultShell = true;

    # Tmux configuration
    programs.tmux = {
      enable = true;
      escapeTime = 1500;
      shortcut = "a";
      plugins = with pkgs.tmuxPlugins; [ nord ]; 
      extraConfig = ''
      
# Enable mouse mode
set -g mouse on
      
      '';
    };
}
