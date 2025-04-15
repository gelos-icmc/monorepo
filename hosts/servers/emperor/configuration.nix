{inputs, ...}: {
  imports = [
    inputs.sops-nix.nixosModules.sops
    ./hardware-configuration.nix
    ../common
  ];

  networking.hostId = "a41da101";

  networking = {
    hostName = "emperor";
    nameservers = ["1.1.1.1"];
    interfaces = {
      # Interface WAN
      # Conectada a internet da USP, IP estatico
      eno1 = {
        useDHCP = false;
        ipv4 = {
          addresses = [
            {
              address = "143.107.183.252";
              prefixLength = 26;
            }
          ];
          routes = [
            {
              address = "0.0.0.0";
              prefixLength = 0;
              via = "143.107.183.193";
            }
          ];
        };
      };
    };
  };

  system.stateVersion = "24.05";
}
