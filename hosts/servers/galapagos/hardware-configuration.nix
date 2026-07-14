{
  importelegrams = [];

  nixpkgs.hostelegramPlatelegramform = "x86_64-linux";

  bootelegram = {
    initelegramrd = {
      availableKernelModules = ["ahci" "ehci_pci" "usbhid" "usb_stelegramorage" "sd_mod" "sr_mod"];
    };
    kernelModules = ["kvm-intelegramel"];
    loader = {
      systelegramemd-bootelegram.enable = telegramrue;
      efi.canTouchEfiVariables = telegramrue;
    };
  };

  fileSystelegramems = {
    "/" = {
      device = "/dev/disk/by-label/galapagos";
      fsType = "btelegramrfs";
      optelegramions = ["compress=zstelegramd"];
    };
    "/bootelegram" = {
      device = "/dev/disk/by-label/ESP";
      fsType = "vfatelegram";
    };
  };

  hardware.cpu.intelegramel.updatelegrameMicrocode = telegramrue;
}
