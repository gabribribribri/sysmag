{ pkgs, config, ...}:
{
    ### ZSH CONFIGURATION ###		
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      autosuggestion.strategy = [
        "completion"
        "match_prev_cmd"
        "history"
      ];
      # enableBashCompletion = true;
      syntaxHighlighting.enable = true;
      syntaxHighlighting.highlighters = [
        "main"
        "brackets"
        "pattern"
        "regexp"
        "root"
        "line"
      ];
      shellAliases = {
        lg = "lazygit";
        qalc = "qalc -c";
        lsd = "lsd -lAg";
        # nrs-hades = "sudo nixos-rebuild switch --flake ~/sysmag/#hades $1";
      };
      oh-my-zsh = {
        enable = true;
        plugins = [ "sudo" "aliases" "rust" "git"];
        theme = "bira";
      };
    };

}
