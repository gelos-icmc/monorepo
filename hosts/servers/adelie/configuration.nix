{lib, inputs, ...}: {
  imports = [
    inputs.sops-nix.nixosModules.sops
    ./hardware-configuration.nix
    ./services
    ../common
  ];

  networking = {
    hostName = "adelie";
    useDHCP = true;
  };

  system.stateVersion = "24.05";
}
