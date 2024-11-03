{inputs, pkgs, config, ... }:

{
    environment.systemPackages = with pkgs;
        [
        
            # Code Workflow
            git zsh kitty
            helix lazygit
            yazi zoxide lsd tree
            nil

            # Classic Workflow
            firefox obsidian

            # Awesome WM pkgs
            arandr nitrogen picom
            rofi libqalculate rofi-calc
            awesome gnome-screenshot

            # Hyprland pkgs
            swww
            inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
            
            # Languages
            python3
            rustc cargo rust-analyzer
            dart lua-language-server 
            clang-tools_16
            bun typescript
            nodePackages.typescript-language-server

            # Showing off
            htop cmatrix
            fastfetch btop 

            # Reste
            baobab wget
            pavucontrol
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
