{ config, pkgs, ... }:

{
  imports = [ ./pkgs.nix ];
  
  home.username = "deck";
  home.homeDirectory = "/home/deck";

  home.stateVersion = "23.05"; # compatible with nixpkgs
  
  home.file = {}; # managing dot files (interesting, should look it up)
  
  home.sessionVariables = {}; # like EDITOR = helix (useless for now)

  programs.home-manager.enable = true; # Let Home Manager install and manage itself.
}
