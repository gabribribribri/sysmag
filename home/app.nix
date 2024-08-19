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

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    options = [ "--cmd cd" ];
  };
}
