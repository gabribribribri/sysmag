{ pkgs, config, ...} :
{
	### ZSH CONFIGURATION ###
	programs.zsh = {
		enable = true;
		shellAliases = {
			hrs = "home-manager switch -f $HOME/sysmag/leon/config/all.nix";
			lg = "lazygit";
		};
		syntaxHighlighting = {
			enable = true;
		        highlighters = [ "main" "brackets" "pattern" "cursor" "regexp" "root" "line" ];
       			 styles = {
        			  "alias" = "fg=magenta,bold";
       				   "path" = "fg=cyan";
	     		};
		};
		enableAutosuggestions = true;
		enableCompletion = true;
		oh-my-zsh = {
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
