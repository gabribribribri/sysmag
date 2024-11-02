{ pkgs, inputs, ...}:

{
    imports = [
        inputs.ags.homeManagerModules.default
    ];
    programs.ags = {
        enable = true;
        configDir = ../app/ags;
        extraPackages = with pkgs; [
            
        ];
    };
}
