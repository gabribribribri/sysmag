{ config, pkgs, ... }:

{
  	home.packages = with pkgs;
		[
			# workspace
			helix tmux
			lazygit nnn

			# dev
			rust-analyzer
			rustc cargo
			
			# showing off
			neofetch

			# gaming
      (pkgs.discord.override {withVencord = true;})
			prismlauncher
  	];



}
