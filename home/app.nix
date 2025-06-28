{ pkgs, config, inputs, ...}:
{
  xdg.enable = true;
  xdg.configFile = {
    # "awesome".source = ../app/awesome;
    # "btop".source = ../app/btop
    # "clangd".source = ../app/clangd
    # "kitty".source = ../app/kitty
    # "picom".source = ../app/picom
    # "rofi".source = ../app/rofi
    # "ags".source = ../app/ags
    "helix".source = ../app/helix;
    "waybar".source = ../app/waybar;
  };

  # # gaybe username present here, so be careful when changing the username !!!
  # systemd.user.tmpfiles.rules = [
  #   "L /home/gaybe/.local/share/rofi/themes - - - - /home/gaybe/sysmag/app/rofi/themes"
  # ];

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    options = [ "--cmd cd" ];
  };
}
