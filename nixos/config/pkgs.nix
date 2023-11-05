{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
            (pkgs.discord.override {withVencord = true;})
            steam
            vscode
            git lazygit
            helix tmux
            firefox
            zsh
            obsidian
            htop
            spotify
            baobab
            neofetch
            wget
            prismlauncher
            rustc cargo rust-analyzer
            libreoffice-qt
            xorg.xkbcomp
            vlc
            libsForQt5.kfind
            xplr
            
            # lunarvim dependencies
            gnumake
            python311Packages.pip
            python3Full
            nodejs_20
            neovim
        ];
        
}