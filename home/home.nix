{ config, pkgs, inputs, ... }:

{
  imports = [
    ./app.nix
    ./zsh.nix
  ];
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "gaybe";
  home.homeDirectory = "/home/gaybe";
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = with pkgs;
  [
    zsh
    btop
    awesome
    helix
    kitty
    picom
    rofi
    lazygit
    yazi
    zoxide
  ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

    home.sessionVariables = {
    EDITOR = "hx";
  };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
