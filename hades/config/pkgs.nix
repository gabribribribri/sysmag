{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
        
            # Code Workflow
            git lazygit nnn
            helix tmux zsh kitty
            vscode

            # Classic Workflow
            firefox obsidian spotify

            # Languages
            rustc cargo rust-analyzer
            dart
            lua lua-language-server
            clang-tools_16

            # Showing off
            htop cmatrix neofetch

            # Gaming
            steam prismlauncher
            (pkgs.discord.override {withVencord = true;})

            # Reste
            baobab wget
            libreoffice-qt
            xorg.xkbcomp
            vlc
            libsForQt5.kfind
        ];
        
}
