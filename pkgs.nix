{ pkgs }:

{
    environment.systemPackages = with pkgs;
        [
        
            steam
            vscode
            git
            nvim
            firefox
            fish
            obsidian

        ];
}