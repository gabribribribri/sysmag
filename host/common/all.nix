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


        # Display Managers & Wayland & X11
        ./dm.nix


        # Desktop Environments & Window Managers
        ./de.nix


        # All the other little things
        ./other.nix
          
    ];
}
