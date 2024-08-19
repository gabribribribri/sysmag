{ pkgs, config, ...} :

{
	environment.variables = rec {
    SYSMAG = "$HOME/sysmag";
		EDITOR = "hx";
  };

	environment.sessionVariables = rec {
		HOST = "$HOST";
	};
}
