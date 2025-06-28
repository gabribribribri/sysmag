{ config, pkgs, ... } :
{
  programs.librewolf = {
    enable = true;
    profiles.gaybe = {
      name = "Gaybe's Config";
      isDefault = true;
      settings = {
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        "browser.chrome.toolbar_tips" = false;
        "animatedFox.hideSingleTab" = false;
        "browser.toolbars.bookmarks.visibility" = "never";
        "extensions.pocket.enabled" = false;
      };
    };
  };
}
