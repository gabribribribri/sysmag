{ pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
        
            # Code Workflow
            git zsh kitty
            helix lazygit
            yazi zoxide lsd tree

            # Classic Workflow
            firefox obsidian

            # Awesome WM pkgs
            arandr nitrogen
            rofi libqalculate rofi-calc
            awesome gnome-screenshot
            
            # Languages
            python3
            rustc cargo rust-analyzer
            dart lua-language-server 
            clang-tools_16

            # Showing off
            htop cmatrix
            fastfetch btop 

            # Reste
            baobab wget
            curl gparted
            libreoffice-qt
            vlc xorg.xkbcomp
            libsForQt5.kfind
            libsForQt5.gwenview
            kdePackages.dolphin
        ];

    fonts.packages = with pkgs;
        [
            (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
        ];
}
