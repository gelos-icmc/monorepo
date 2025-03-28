{
  imports = [];

  boot = {
    initrd = {
      availableKernelModules = ["ahci" "ehci_pci" "megaraid_sas" "usbhid" "usb_storage" "sd_mod" "sr_mod"];
    };
    kernelModules = ["kvm-intel"];
  };

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/emperor";
      fsType = "btrfs";
      options = ["compress=zstd"];
    };
    "/boot" = {
      device = "/dev/disk/by-label/ESP";
      fsType = "vfat";
    };
  };

  hardware.cpu.intel.updateMicrocode = true;
}
