{ pkgs, ...}:

{
    programs.ags = {
        enable = true;
        configDir = ../app/ags;
        extraPackages = with pkgs; [
            
        ];
    };
}
