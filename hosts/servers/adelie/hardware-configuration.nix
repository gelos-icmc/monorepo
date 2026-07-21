{modulesPath, ...}: {
  imports = [
    (modulesPath + "/virtualisation/oci-common.nix")
  ];

  nixpkgs.hostPlatform = "x86_64-linux";
}
