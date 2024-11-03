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
        gapsIn = "10";
        gapsOut = "25";
        rounding = "13";
        startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
            ags &
            swww-daemon &
            sleep 1
            swww img -o DP-1 ${builtins.getEnv "SYSMAG"}/global/bg/sunset-guard-tomer.jpeg &
        '';
        switchGaps = pkgs.pkgs.writeShellScriptBin "out" ''
            GAPS_OUT=''$(hyprctl getoption general:gaps_out | grep custom | cut -c 14-15)
            if [ ''$GAPS_OUT = "${gapsOut}" ]; then
                hyprctl keyword general:gaps_in 0
                hyprctl keyword general:gaps_out 0
                hyprctl keyword decoration:rounding 0
            else
                hyprctl keyword general:gaps_in ${gapsIn}
                hyprctl keyword general:gaps_out ${gapsOut}
                hyprctl keyword decoration:rounding ${rounding}
            fi
        '';
    in
    {
        "$mod" = "SUPER";
        "$alt" = "ALT";
        "$ctrl" = "CTRL";

        exec-once = ''${startupScript}/bin/start'';

        monitor = [
            #monitor  resolution         position  scale  transform  (value)
            "DP-1,    1920x1080@164.92,  1080x0,   1,     transform, 0"
            "DP-2,    1920x1080@143.85,  0x-420,   1,     transform, 3"
        ];
        
        bind = [
            ## Launch programms ##
            "$mod, Q, exec, firefox"
            "$mod, return, exec, kitty"
            "$alt, space, exec, ags -t applauncher"


            ## Quit, Restart, Shutdown ##
            "$mod, delete, exit"
            "$mod, return, forcerendererreload"
            "$mod, C, killactive"


            ## Workspaces ##
            "$mod, 6, workspace, 1"
            "$mod, 7, workspace, 2"
            "$mod, 8, workspace, 3"
            "$mod, 9, workspace, 4"
            "$mod, 0, workspace, 5"
            "$mod+$alt, 6, movetoworkspace, 1"
            "$mod+$alt, 7, movetoworkspace, 2"
            "$mod+$alt, 8, movetoworkspace, 3"
            "$mod+$alt, 9, movetoworkspace, 4"
            "$mod+$alt, 0, movetoworkspace, 5"


            ## Switch Between Windows ##
            "$mod, H, movefocus, l"
            "$mod, J, movefocus, d"
            "$mod, K, movefocus, u"
            "$mod, L, movefocus, r"

            "$mod, U, focusmonitor, +1"
            "$mod, I, focusmonitor, -1"


            ## Manipulate Windows ##
            "$mod, S, exec, ${switchGaps}/bin/out"
            "$mod, F, fullscreen, 0"
            "$mod, M, fullscreen, 1"
            "$mod, space, togglefloating"
            "$mod, G, centerwindow"
            "$mod, V, pin"
                        
            "$mod+$alt, H, swapwindow, l"
            "$mod+$alt, J, swapwindow, d"
            "$mod+$alt, K, swapwindow, u"
            "$mod+$alt, L, swapwindow, r"

            "$mod+$alt, U, movewindow, mon:+1"
            "$mod+$alt, I, movewindow, mon:-1"
        ];

        bindr = [
            "$mod+$ctrl, H, resizeactive, -50 0"
            "$mod+$ctrl, J, resizeactive, 0 -50"
            "$mod+$ctrl, K, resizeactive, 0 50"
            "$mod+$ctrl, L, resizeactive, 50 0"
        ];

        bindm = [
            "$mod, mouse:272, movewindow"
            "$mod, mouse:273, resizewindow"
        ];

        # STYLING
        general = {
            gaps_in = gapsIn;
            gaps_out = gapsOut;
        };

        decoration = {
            rounding = rounding;
        };

        # bezier = [
        #     "easeOutQuart, 0.25, 1, 0.5, 1"
        #     "easeOutCubic, 0.33, 1, 0.68, 1"
        #     "easeOutBack,  0.175, 0.885, 0.62, 1.275"
        # ];

        # animation = [
        #     "workspaces, 1, 6, easeOutBack"
        #     "windows, 1, 6, easeOutBack"
        #     "fade, 1, 7, easeOutQuart"
        #     "borderangle, 1, 8, easeOutCubic"
        # ];
    };
}
