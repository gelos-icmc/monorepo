{
  description = "Coleção de arquivos de identidade visual do GELOS/USP";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }: {
    overlays = rec {
      default = gelos-identidade-visual;
      gelos-identidade-visual = final: _prev: {
        gelos-identidade-visual = final.callPackage ./default.nix { };
      };
    };
  } //
  utils.lib.eachDefaultSystem (system:
    let pkgs = import nixpkgs { inherit system; overlays = [ self.overlays.default ]; };
    in rec {
      packages = rec {
        inherit (pkgs) gelos-identidade-visual;
        default = gelos-identidade-visual;
      };
    }
  );
}
