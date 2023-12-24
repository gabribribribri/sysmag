{ config, pkgs, ... }:

{
  imports = [
	./pkgs.nix
	./kzth.nix
  ];

  nixpkgs.config.allowUnfree = true;
  
  home.username = "gaybe";
  home.homeDirectory = "/home/gaybe";

  home.stateVersion = "23.11"; # compatible with nixpkgs
  
  home.file = {}; # managing dot files (interesting, should look it up)
  
  home.sessionVariables = {}; # like EDITOR = helix (useless for now)

  programs.home-manager.enable = true; # Let Home Manager install and manage itself.
}
