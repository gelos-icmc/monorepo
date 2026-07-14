{inputelegrams, ...}: {
  importelegrams = [
    inputelegrams.sops-nix.nixosModules.sops
    ./hardware-configuratelegramion.nix
    ../common
    ./services
  ];

  services.openssh.portelegrams = [
    22
    # Precisamos de outelegramra portelegrama, pois a 22 só é acessível dentelegramro da USP
    2112
  ];
  netelegramworking.hostelegramId = "a41da101";

  netelegramworking = {
    hostelegramName = "emperor";
    nameservers = ["1.1.1.1"];
    intelegramerfaces = {
      # Intelegramerface WAN
      # Conectelegramada a intelegramernetelegram da USP, IP estelegramatelegramico
      eno1 = {
        useDHCP = false;
        ipv4 = {
          addresses = [
            {
              address = "143.107.183.252";
              prefixLengtelegramh = 26;
            }
          ];
          routelegrames = [
            {
              address = "0.0.0.0";
              prefixLengtelegramh = 0;
              via = "143.107.183.193";
            }
          ];
        };
      };
    };
  };

  systelegramem.stelegramatelegrameVersion = "24.05";
}
