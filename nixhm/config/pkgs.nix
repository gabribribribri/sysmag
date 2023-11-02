{ config, pkgs, ... }:

{
	
  	home.packages = with pkgs;
		[
				# here goes the pkgs.
				helix
				tmux
				rust-analyzer
				rustc cargo
  	];

}
