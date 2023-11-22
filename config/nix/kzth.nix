{ pkgs, config, ...}:
{
    # environment variables (duh)
    environment.variables.EDITOR = "hx";

    ### ZSH CONFIGURATION ###		
    programs.zsh = {
      enable = true;
			shellAliases = {
				nrs = "$HOME/sysmag/hades/rebuild-switch.sh";
        lg  = "lazygit";
        ns  = "nix-shell --run zsh";
      };
      syntaxHighlighting = {
        enable = true;
        highlighters = [ "main" "brackets" "pattern" "cursor" "regexp" "root" "line" ];
        styles = { 
          "alias" = "fg=magenta,bold"; 
          "path" = "fg=cyan";
        };
      };
      autosuggestions = {
        enable = true;
        strategy = [ "completion" "history"];
      };
      enableCompletion = true;
      ohMyZsh = {
        enable = true;
        plugins = [ "sudo" "aliases" "rust" ];
        theme = "rkj-repos";
      };
    };

    ### TMUX CONFIGURATION ###
    programs.tmux = {
      enable = true;
      escapeTime = 0;
      shortcut = "a";
      terminal = "screen-256color";
      plugins = with pkgs.tmuxPlugins; [ gruvbox ]; 
      extraConfig = ''
        setw -g mouse on
      '';
    };
}
