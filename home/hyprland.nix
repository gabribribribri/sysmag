{pkgs, lib, inputs, ...} :
{
    wayland.windowManager.hyprland = {
        # allow home-manager to configure hyprland
        enable = true;
        plugins = with inputs.hyprland-plugins.packages.${pkgs.system}; [
            # hyprbars
        ];
    };

    wayland.windowManager.hyprland.settings = {
        "$mod" = "SUPER";

        exec = [
            "ags"
        ];

        monitor = [
            #monitor  resolution         position  scale  transform  (value)
            "DP-1,    1920x1080@164.92,  1080x0,   1,     transform, 0"
            "DP-2,    1920x1080@143.85,  0x-420,   1,     transform, 3"
        ];
        
        bind = [
            # Launch programms
            "$mod, Q, exec, firefox"
            "$mod, return, exec, kitty"

            # Quit, Restart, Shutdown...
            "$mod, delete, exit"
            "$mod, return, forcerendererreload"
        ];
    };
}
