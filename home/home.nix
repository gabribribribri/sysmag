{config, pkgs, inputs, ... }:

{
  imports = [
    ./app.nix
    ./zsh.nix
    ./librewolf.nix
    ./git.nix
    ./hyprland.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "gaybe";
  home.homeDirectory = "/home/gaybe";
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = with pkgs;
  [
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
