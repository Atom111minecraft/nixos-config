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
  ntfs3g
  gnome-disk-utility
  jmtpfs
  python3
  fzf
  mpv
  aria2
  ffmpeg
  obsidian
  upscayl
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
