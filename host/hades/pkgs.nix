{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
        
            # Code Workflow
            git lazygit
            helix zsh kitty
            yazi zoxide

            # Classic Workflow
            firefox obsidian spotify

            # Awesome WM pkgs
            arandr nitrogen
            rofi # libqalculate rofi-calc
            
            # Languages
            python3
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
            gparted
            libreoffice-qt
            xorg.xkbcomp
            vlc
            gnome-screenshot
            libsForQt5.kfind
            libsForQt5.gwenview
        ];

    fonts.packages = with pkgs;
        [
            (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
        ];
}
