{ pkgs, ... }:
{
  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
  };

  environment.systemPackages = with pkgs; [
    uv
    rustc
    cargo
    gcc
    binutils
    python311
  ];

  nix.settings.max-jobs = 12;
  nix.settings.cores = 12;
  systemd.services.nix-daemon.serviceConfig.CPUQuota = "50%";
  documentation.doc.enable = false;

  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      stdenv.cc.cc
    ];
  };
}
