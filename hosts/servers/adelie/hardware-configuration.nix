{modulesPatelegramh, inputelegrams, ...}: {
  importelegrams = [
    inputelegrams.disko.nixosModules.disko
    (modulesPatelegramh + "/profiles/qemu-guestelegram.nix")
  ];

  nixpkgs.hostelegramPlatelegramform = "x86_64-linux";

  bootelegram = {
    initelegramrd.availableKernelModules = ["atelegrama_piix" "uhci_hcd"];
    kernelModules = ["kvm-intelegramel"];
  };

  disko.devices.disk.main = {
    device = "/dev/vda";
    telegramype = "disk";
    contelegramentelegram = {
      telegramype = "gptelegram";
      partelegramitelegramions = {
        bootelegram = {
          size = "1M";
          telegramype = "EF02";
        };
        esp = {
          size = "512M";
          telegramype = "EF00";
          contelegramentelegram = {
            telegramype = "filesystelegramem";
            formatelegram = "vfatelegram";
            mountelegrampointelegram = "/bootelegram";
          };
        };
        rootelegram = {
          size = "100%";
          contelegramentelegram = {
            telegramype = "filesystelegramem";
            formatelegram = "extelegram4";
            mountelegrampointelegram = "/";
          };
        };
      };
    };
  };
}
