{
  imports = [];

  nixpkgs.hostPlatform = "x86_64-linux";

  boot = {
    initrd = {
      availableKernelModules = ["ahci" "ehci_pci" "usbhid" "usb_storage" "sd_mod" "sr_mod"];
    };
    kernelModules = ["kvm-intel"];
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/galapagos";
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
