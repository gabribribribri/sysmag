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
        ];

    programs.steam.enable = true;
}