{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
            (pkgs.discord.override {withOpenASAR = true;withVencord = true;})
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
        ];

    programs.steam.enable = true;
}