{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
            (pkgs.discord.override {withVencord = true;})
            steam
            vscode
            git
            neovim
            firefox
            fish
            obsidian 
            htop
            spotify
            baobab
            neofetch
            wget
            prismlauncher
        ];

    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };
}