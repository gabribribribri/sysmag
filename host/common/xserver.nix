{ pkgs, config, ...} :

{
    services = {
        xserver = {
    	      # Enable the X11 windowing system.
            enable = true;
            videoDrivers = [ "amdgpu" ];
            
            # Enable Awesome WM
            windowManager.awesome = {
                enable = true;
                luaModules = with pkgs.luaPackages; [
                    luarocks # is the package manager for Lua modules
                    luadbi-mysql # Database abstraction layer
    	          ];
            };
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
