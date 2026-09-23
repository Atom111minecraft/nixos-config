{ ... }:

{
  imports = [
    ./modules/autoclicker.nix
    ./modules/autoclicker.nix
    ./modules/steam.nix
    ./modules/ollama.nix
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/system.nix
    ./modules/security.nix
    ./modules/nvidia.nix
    ./modules/hyprland.nix
    ./modules/noctalia.nix
  ];

  system.stateVersion = "26.05";
}
