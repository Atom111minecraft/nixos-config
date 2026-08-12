{ pkgs, ... }:

{
  networking.hostName = "nix";
  networking.networkmanager.enable = true;
security.sudo.wheelNeedsPassword = false;
services.xserver.enable = true;
nixpkgs.config.allowUnfree = true;

  users.users.kirill = {
    isNormalUser = true;
    description = "Kirill";
    extraGroups = [ "wheel" "networkmanager" "video" "render" ];
    initialPassword = "kirill"; # после первого входа смените командой passwd
  };

  time.timeZone = "Europe/Moscow";
  i18n.defaultLocale = "ru_RU.UTF-8";

    boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };

  hardware.cpu.intel.updateMicrocode = true;
  hardware.enableRedistributableFirmware = true;

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.gvfs.enable = true;
  services.udisks2.enable = true;

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  # Явный список несвободных пакетов
  nixpkgs.config.permittedUnfreePackages = [
    "nvidia-x11"
    "nvidia-settings"
    "nvidia-persistenced"
    "yandex-music"
    "intel-microcode"
  ];
}
