{ ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;
    powerManagement.enable = false;
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  environment.variables = {
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    GBM_BACKEND = "nvidia-drm";
    WLR_NO_HARDWARE_CURSORS = "1";
  };

  boot.kernelParams = [ "nvidia-drm.modeset=1" ];
}
