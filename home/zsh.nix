{ pkgs, config, inputs, ...}:
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
        nrs-hades = "sudo nixos-rebuild switch --flake ~/sysmag/#hades";
      };
      oh-my-zsh = {
        enable = true;
        plugins = [ "sudo" "aliases" "rust" "git"];
        theme = "bira";
      };
    };

    # Set zsh default
    users.defaultUserShell = pkgs.zsh;
}
