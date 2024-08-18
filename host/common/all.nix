{ pkgs, config, inputs, ... } :

{
    imports =
    [
        # Bluetooth
        ./bluetooth


        # Bootloader 
        ./boot.nix


        # Networking
        ./network.nix

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
