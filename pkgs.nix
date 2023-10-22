{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
        
            steam
            vscode
            git
            neovim
            firefox
            fish
            obsidian # does not work.
            htop
            vencord
            spotify
            baobab
            neofetch
        ];

    programs.steam.enable = true;
}