{ pkgs, config, ...}:

{

    # Enable CUPS to print documents.
    services.printing.enable = true;


    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;


    # System version
    system.stateVersion = "23.05";


    # Allow experimental nix features
    nix.settings.experimental-features = [ "flakes" "nix-command" ];

}
