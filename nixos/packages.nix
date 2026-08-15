{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gnome-text-editor
    firefox
    foot
    fastfetch
    yandex-music
    nautilus
    gvfs
    git
    playerctl
yazi
  obsidian
    pavucontrol
    wl-clipboard
    cliphist
    grim
    slurp
    git
    flameshot
    cava
  ];
}
