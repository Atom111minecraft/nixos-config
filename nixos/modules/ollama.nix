{ pkgs, ... }:
{
  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
  };

  environment.systemPackages = [ pkgs.uv pkgs.rustc pkgs.cargo pkgs.gcc pkgs.binutils pkgs.python312 ];
  nix.settings.max-jobs = 12;
  nix.settings.cores = 12;
}

  documentation.doc.enable = false;
