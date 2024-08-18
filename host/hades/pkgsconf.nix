{ config, pkgs, ...}:

{

		# Unsecure packages permitted
    nixpkgs.config.permittedInsecurePackages = [
        "electron-24.8.6"
    ];

    # Enable ZSH
    programs.zsh.enable = true;
    
}
