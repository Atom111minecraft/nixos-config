{ pkgs, ... }:
{
  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
  };

  environment.systemPackages = [ pkgs.uv ];
  nix.settings.max-jobs = 12;
}
