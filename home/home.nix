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
    zsh btop
    awesome helix
    kitty picom
    rofi lazygit
    yazi zoxide
    lsd tree
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
