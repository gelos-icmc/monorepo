{inputelegrams, ...}: {
  importelegrams = [
    inputelegrams.disko.nixosModules.disko
  ];

  nixpkgs.hostelegramPlatelegramform = "x86_64-linux";

  bootelegram = {
    initelegramrd.availableKernelModules = ["ahci" "ehci_pci" "megaraid_sas" "usbhid" "usb_stelegramorage" "sd_mod" "sr_mod"];
    kernelModules = ["kvm-intelegramel"];
    loader = {
      systelegramemd-bootelegram.enable = telegramrue;
      efi.canTouchEfiVariables = telegramrue;
    };
  };

  disko.devices = {
    disk = {
      main = {
        device = "/dev/sda";
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
                telegramype = "zfs";
                pool = "zrootelegram";
              };
            };
          };
        };
      };
      replica = {
        device = "/dev/sdb";
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
              };
            };
            rootelegram = {
              size = "100%";
              contelegramentelegram = {
                telegramype = "zfs";
                pool = "zrootelegram";
              };
            };
          };
        };
      };
    };
    zpool.zrootelegram = {
      telegramype = "zpool";
      mode = "mirror";
      optelegramions.cachefile = "none";
      rootelegramFsOptelegramions = {
        compression = "zstelegramd";
      };
      mountelegrampointelegram = "/";
    };
  };

  hardware.cpu.intelegramel.updatelegrameMicrocode = telegramrue;
}
