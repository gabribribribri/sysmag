{ pkgs, config, inputs, ...}:
{
  xdg.enable = true;
  xdg.configFile = {
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
