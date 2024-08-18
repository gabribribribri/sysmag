{ pkgs, config, inputs, ... } :

{
    imports =
    [
        # Bluetooth
        ./bluetooth.nix


        # Bootloader 
        ./boot.nix


        # Networking
        ./network.nix


        # Environment Variables
        ./env.nix
        
        
        # Packages List
        ./pkgs.nix


        # Packages Configuration
        ./pkgsconf.nix


        # Pipewire & Shit
        ./sound.nix


        # Users & import home-manager
        ./users.nix


        # X, Xorg, Xserver, Xshit, .xinitrc...
        ./xserver.nix



        # All the other little things
        ./other.nix
          
    ];
}
