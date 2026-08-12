{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/system.nix
    ./modules/nvidia.nix
    ./modules/hyprland.nix
    ./modules/noctalia.nix
  ];

  system.stateVersion = "26.05";
}
