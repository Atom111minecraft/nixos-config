{ pkgs, ... }:
{
  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
  };

  environment.systemPackages = [
    pkgs.uv
    pkgs.rustc
    pkgs.cargo
    pkgs.gcc
    pkgs.binutils
    pkgs.python311
  ];

  nix.settings.max-jobs = 12;
  nix.settings.cores = 12;
  systemd.services.nix-daemon.serviceConfig.CPUQuota = "50%";
  documentation.doc.enable = false;
}
