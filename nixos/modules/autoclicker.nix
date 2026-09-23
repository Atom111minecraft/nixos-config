{ pkgs, ... }:
{
  services.ydotoold = {
    enable = true;
    socketPath = "/tmp/ydotoold.socket";
  };

  environment.systemPackages = with pkgs; [
    ydotool
    python3
  ];

  users.users.kirill.extraGroups = [ "input" ];
}
