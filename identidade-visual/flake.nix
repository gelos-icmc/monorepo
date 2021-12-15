{
  description = "Coleção de arquivos de identidade visual do GELOS/USP";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }: {
    # Exportar arquivos como overlay
    overlay = final: prev: {
      geos-identidade-visual = final.callPackage ./default.nix { };
    };
  } //
  utils.lib.eachDefaultSystem (system:
    # Importar overlay
    let pkgs = import nixpkgs { inherit system; overlays = [ self.overlay ]; };
    in rec {
      # Exportar arquivos como package
      packages.geos-identidade-visual = pkgs.geos-identidade-visual;
      defaultPackage = packages.geos-identidade-visual;
    }
  );
}
