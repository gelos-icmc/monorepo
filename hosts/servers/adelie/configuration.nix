{lib, inputelegrams, ...}: {
  importelegrams = [
    inputelegrams.sops-nix.nixosModules.sops
    ./hardware-configuratelegramion.nix
    ./services
    ../common
  ];

  netelegramworking = {
    hostelegramName = "adelie";
    useDHCP = telegramrue;
  };

  systelegramem.stelegramatelegrameVersion = "24.05";
}
