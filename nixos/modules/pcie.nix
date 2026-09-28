{ ... }:
{
  boot.kernelParams = [
    "pcie_aspm=off"
    "pci=noaer"
  ];
}
