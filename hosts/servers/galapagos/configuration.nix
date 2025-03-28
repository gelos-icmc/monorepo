{inputs, ...}: {
  imports = [
    inputs.sops-nix.nixosModules.sops
    inputs.nix-minecraft.nixosModules.minecraft-servers
    ./hardware-configuration.nix
    ./services
    ../common
  ];
  # Para o servidor de Minecraft
  nixpkgs.overlays = [ inputs.nix-minecraft.overlay ];

  networking = {
    hostName = "galapagos";
    nameservers = ["143.107.253.3"];
    interfaces = {
      # Interface WAN
      # Conectada a internet da USP, IP estatico
      eno1 = {
        useDHCP = false;
        ipv4 = {
          addresses = [
            {
              address = "143.107.183.251";
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

  system.stateVersion = "21.11";
}
