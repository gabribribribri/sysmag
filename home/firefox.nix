{ config, pkgs, ... } :
{
  programs.firefox = {
    enable = true;
    profiles.gaybe = {
      name = "Gaybe's Config";
      isDefault = true;
      userChrome = (builtins.readFile app/firefox/animatedFox.css);
      settings = {
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        "browser.chrome.toolbar_tips" = false;
        "browser.toolbars.bookmarks.visibility" = "never";
        "extensions.pocket.enabled" = false;
      };
    };
  };
}
