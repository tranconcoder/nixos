{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  environment.sessionVariables = {
    XDG_CURRENT_DESKTOP = "Hyprland";
  };

  environment.systemPackages = with pkgs; [ anyrun ];
}