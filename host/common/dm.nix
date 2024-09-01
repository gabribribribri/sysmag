{ pkgs, config, ...} :

{
    services = {
        xserver = {
            # Enable the X11 windowing system.
            enable = true;
            videoDrivers = [ "amdgpu" ];

        };


        displayManager = {
            defaultSession = "none+awesome";
            sddm = {
                enable = true;
                wayland.enable = true;
                theme = "../../app/sddm-themes/Nordic-darker-Plasma-6";
            };
	      };
    };
}
