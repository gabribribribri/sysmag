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
            obsidian
            htop

        ];
}