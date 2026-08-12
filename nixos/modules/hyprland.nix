{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    mako
    polkit_gnome
  ];

  services.getty.autologinUser = "kirill";
}
