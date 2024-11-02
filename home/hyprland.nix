{pkgs, lib, inputs, ...} :
{
    wayland.windowManager.hyprland = {
        # allow home-manager to configure hyprland
        enable = true;
        plugins = with inputs.hyprland-plugins.packages.${pkgs.system}; [
            # hyprbars
        ];
    };

    wayland.windowManager.hyprland.settings =
    let
        startupScript = pkgs.pkgs.writeSheelScriptBin "start" ''
            ags &
            swww-daemon &
            sleep 1
            swww img -o DP-1 ${~/sysmag/global/bg/sunset-guard-tomer.jpeg} &
        '';
    in
    {
        "$mod" = "SUPER";

        exec-once = ''${startupScript}/bin/start'';

        monitor = [
            #monitor  resolution         position  scale  transform  (value)
            "DP-1,    1920x1080@164.92,  1080x0,   1,     transform, 0"
            "DP-2,    1920x1080@143.85,  0x-420,   1,     transform, 3"
        ];
        
        bind = [
            # Launch programms
            "$mod, Q, exec, firefox"
            "$mod, return, exec, kitty"
            "ALT, space, exec, ags -t applauncher"

            # Quit, Restart, Shutdown...
            "$mod, delete, exit"
            "$mod, return, forcerendererreload"
            "$mod, C, killactive"

            # Workspaces 
            "$mod, 1, workspace, 1"
            "$mod, 2, workspace, 2"
            "$mod, 3, workspace, 3"
            "$mod, 4, workspace, 4"
            "$mod, 5, workspace, 5"

            
        ];
    };
}
