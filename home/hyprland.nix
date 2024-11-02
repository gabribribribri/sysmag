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
        
        bind = [
            "$mod, Q, exec, firefox"
            "$mod, return, exec, kitty"
            "$mod, delete, exit"
        ];
    };
}
