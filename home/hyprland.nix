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
        
    };
}
