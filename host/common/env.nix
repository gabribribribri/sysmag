{ pkgs, config, ...} :

{
	environment.variables = rec {
    SYSMAG = "$HOME/sysmag";
		EDITOR = "hx";
  };
}
