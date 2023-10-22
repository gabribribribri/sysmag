{ config, pkgs, ...}:

{
    # Enable fish
    programs.fish.enable = true;
    # Set fish default
    users.defaultUserShell = pkgs.fish;
    # gaybe uses default
    users.users.gaybe.useDefaultShell = true;
}