{ ... }:
{
  # Фаервол: всё входящее заблокировано, исходящее разрешено
  networking.firewall.enable = true;
  networking.firewall.allowPing = true;
  networking.firewall.allowedTCPPorts = [ ];
  networking.firewall.allowedUDPPorts = [ ];

  # Сетевые службы, коим отроду не включаться
  services.openssh.enable = false;
  services.avahi.enable = false;
  services.samba.enable = false;
  services.nfs.server.enable = false;

  # Укрепление ядра
  boot.kernel.sysctl = {
    "net.ipv4.tcp_syncookies" = 1;
    "net.ipv4.conf.all.rp_filter" = 1;
    "net.ipv4.conf.all.accept_redirects" = 0;
    "net.ipv4.conf.all.send_redirects" = 0;
    "net.ipv6.conf.all.accept_redirects" = 0;
    "kernel.kptr_restrict" = 2;
    "kernel.dmesg_restrict" = 1;
  };
}
