{ pkgs, config, ... } :

{
	programs.helix = {
		enable = true;
		defaultEditor = true;
		extraConfig = (builtins.readFile ../app/helix/config.toml);
	};
}
