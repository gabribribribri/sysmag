
{ pkgs, config, ...} :

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
        
    };

    nixpkgs.config.qt5 = {
        enable = true;
        platformTheme = "qt5ct"; 
        style = {
            package = pkgs.utterly-nord-plasma;
            name = "Utterly Nord Plasma";
    };
};

}
