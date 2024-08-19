{ pkgs, config, ...} :

{
    services = {
        xserver = {
            # Enable the X11 windowing system.
            enable = true;
            videoDrivers = ["amdgpu"];

            # Enable AwesomeWM
            windowManager.awesome = {
                enable = true;
                luaModules = with pkgs.luaPackages;[
                    luarocks # is the package manager for Lua modules
                    luadbi-mysql # Data base abstraction layer
                ];
            };
        };


        displayManager = {
            sddm = {
                enable = true;
                wayland.enable = true;
                theme = "../../app/sddm-themes/Nordic-darker-Plasma-6";
            };
	      };
    };
}
