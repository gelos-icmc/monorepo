{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    systems.url = "github:nix-systems/default";
  };

  outputs = {
    self,
    systems,
    nixpkgs,
  }: let
    eachSystem = f:
      nixpkgs.lib.genAttrs
      (import systems)
      (system: f nixpkgs.legacyPackages.${system});
  in {
    packages = eachSystem (pkgs: rec {
      default = pkgs.callPackage ./default.nix {};
      texlive = pkgs.texlive.withPackages (_: default.tlDeps ++ [default]);
    });
    devShells = eachSystem (pkgs: {
      default = pkgs.callPackage ./shell.nix {};
    });
    formatter = eachSystem (pkgs: pkgs.alejandra);
  };
}
