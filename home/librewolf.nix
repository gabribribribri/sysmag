{ config, pkgs, ... } :
{
  programs.librewolf = {
    enable = true;
    profiles.gaybe = {
      name = "Gaybe's Config";
      isDefault = true;
      settings = {
        # Old Firefox stuff, don't know if necessary with librewolf anymore
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        "browser.chrome.toolbar_tips" = false;
        "browser.toolbars.bookmarks.visibility" = "never";
        "extensions.pocket.enabled" = false;

        "identity.fxaccounts.enabled" = true;
        "webgl.disabled" = false;
        "browser.newtabpage.enabled" = false;
        "browser.search.suggest.enabled" = true;
        "browser.search.suggest.enabled.private" = true;
        "browser.urlbar.showSearchSuggestionsFirst" = true;
        "places.history.enabled" = true;

        # !!! DID NOT FIND YET
        # Remember browsing and download history
        # Remember search and form history
        # Save and fill addresses
        # Save and fill payment methods
        # Ask to save password and sub categories
      };
    };
  };
}
