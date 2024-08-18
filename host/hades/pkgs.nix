{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
        
            # Code Workflow
            git zsh kitty

            # Classic Workflow
            firefox obsidian

            # Awesome WM pkgs
            arandr nitrogen
            rofi # libqalculate rofi-calc
            
            # Languages
            python3
            rustc cargo rust-analyzer
            dart
            lua54Packages.lua
            lua54Packages.luarocks
            lua-language-server 
            clang-tools_16

            # Showing off
            htop cmatrix fastfetch

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
