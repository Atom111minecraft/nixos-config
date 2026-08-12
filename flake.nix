{
  description = "NixOS configuration for X99 machine (Kirill)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    noctalia.url = "github:noctalia-dev/noctalia";
  };

  outputs = { nixpkgs, noctalia, ... }: {
    nixosConfigurations.x99 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        noctalia.nixosModules.default
        ./nixos/configuration.nix
      ];
    };
  };
}
