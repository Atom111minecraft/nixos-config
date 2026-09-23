{
  description = "NixOS configuration for X99 machine (Kirill)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    noctalia.url = "github:noctalia-dev/noctalia";
    zapret-discord-youtube.url = "github:kartavkun/zapret-discord-youtube";
    sober.url = "github:vinegarhq/sober";
  };

  outputs = { nixpkgs, noctalia, zapret-discord-youtube, ... }: {
    nixosConfigurations.nix = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        noctalia.nixosModules.default
        sober.nixosModules.default
          zapret-discord-youtube.nixosModules.withTestTools
          {
            services.zapret-discord-youtube.enable = true;
            services.zapret-discord-youtube.configName = "general(ALT11)";
          }
        ./nixos/configuration.nix
      ];
    };
  };
}
