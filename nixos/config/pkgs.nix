{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
            (pkgs.discord.override {withVencord = true;})
            steam
            vscode
            git
            helix
            firefox
            fish
            obsidian
            htop
            spotify
            baobab
            neofetch
            wget
            prismlauncher
            rustc cargo
            libreoffice-qt
            xorg.xkbcomp
            vlc
            libsForQt5.kfind
            
            # lunarvim dependencies
            gnumake
            python311Packages.pip
            python3Full
            nodejs_20
        ];
        
    nixpkgs.config.permittedInsecurePackages = [
        "electron-24.8.6"
    ];

    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };
}