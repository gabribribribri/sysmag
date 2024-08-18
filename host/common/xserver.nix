{ pkgs, config, ...} :

{
    services = {
	    # Enable the X11 windowing system.
	    xserver.enable = true;

	    # Enable Awesome WM
	    xserver.windowManager.awesome = {
	        enable = true;
	        luaModules = with pkgs.luaPackages; [
	            luarocks # is the package manager for Lua modules
	            luadbi-mysql # Database abstraction layer
	          ];
	    };

	    displayManager = {
	        defaultSession = "none+awesome";
	        sddm.enable = true;
	        autoLogin = {
	            enable = true;
	            user = "gaybe";
	        };
	    };
	};

}
