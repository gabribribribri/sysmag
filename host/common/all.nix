{ pkgs, config, inputs, ... } :

{
    imports =
    [
        # Bluetooth
        ./bluetooth.nix


        # Networking
        ./network.nix


        # Environment Variables
        ./env.nix
        
        
        # Packages List
        ./pkgs.nix


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
