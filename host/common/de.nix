
{ pkgs, inputs, ...} :

{
    services = {
        # Enable AwesomeWM
        xserver.windowManager.awesome = {
            enable = true;
            luaModules = with pkgs.luaPackages;[
                luarocks # is the package manager for Lua modules
                luadbi-mysql # Data base abstraction layer
            ];
        };
        
        desktopManager.plasma6 = {
            enable = true;

        };
    };

    programs.hyprland = {
        enable = true;
        package = inputs.hyprland.packages."${pkgs.system}".hyprland;
    };
}
