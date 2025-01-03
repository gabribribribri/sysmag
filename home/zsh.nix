{ pkgs, config, ...}:
{
    ### ZSH CONFIGURATION ###		
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      shellAliases = {
        lg = "lazygit";
        qalc = "qalc -c";
        lsd = "lsd -lAg";
        nrs-hades = "sudo nixos-rebuild switch --flake ~/sysmag/#hades $1";
      };
      oh-my-zsh = {
        enable = true;
        plugins = [ "sudo" "aliases" "rust" "git"];
        theme = "bira";
      };
    };

}
