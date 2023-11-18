{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
            (pkgs.discord.override {withVencord = true;})
            steam
            vscode
            git lazygit
            helix tmux zsh kitty
            firefox
            obsidian
            htop
            spotify
            baobab
            neofetch
            wget
            prismlauncher
            rustc cargo rust-analyzer
            dart
            libreoffice-qt
            xorg.xkbcomp
            vlc
            libsForQt5.kfind
            xplr
  
        ];
        
}
