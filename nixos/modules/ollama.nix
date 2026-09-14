{ pkgs, ... }:
{
  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
  };

  environment.systemPackages = [ pkgs.uv pkgs.rustc pkgs.cargo pkgs.gcc pkgs.binutils ];
  nix.settings.max-jobs = 12;
  nix.settings.cores = 12;
}
