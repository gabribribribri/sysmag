{ pkgs, config, inputs, ...}:
{
  xdg.enable = true;
  xdg.configFile = {
    "awesome".source = ../app/awesome;
    "btop".source = ../app/btop;
    # "clangd.source" = ../app/clangd;
    "helix".source = ../app/helix;
    "kitty".source = ../app/kitty;
    "picom".source = ../app/picom;
    "rofi".source = ../app/rofi;
  };

  # gaybe username present here, so be careful when changing the username !!!
  systemd.user.tmpfiles.rules = [
    "L /home/gaybe/.local/share/rofi/themes - - - - /home/gaybe/sysmag/app/rofi/themes"
  ];

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    options = [ "--cmd cd" ];
  };
}
