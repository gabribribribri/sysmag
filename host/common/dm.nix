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
                # I would need to package the theme myself and that would be quite boring
                # theme = "../../app/sddm-themes/Nordic-darker-Plasma-6";
            };
	      };
    };
}
