{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    systems.url = "github:nix-systems/default";
  };

  outputs = { self, systems, nixpkgs }:
    let
      eachSystem = f: nixpkgs.lib.genAttrs
        (import systems)
        (system: f nixpkgs.legacyPackages.${system});
    in
    {
      packages = eachSystem (pkgs: with pkgs; {
        default = stdenvNoCC.mkDerivation {
          pname = "gelos-beamer";
          version = "0.1";
          src = ./.;
          installPhase = ''
            install -D beamerthemegelos.sty gelos-dark.png gelos-light.png -t $out/tex/latex/gelosbeamer
          '';
        };
      });
      devShells = eachSystem (pkgs: with pkgs; {
        default = mkShell {
          buildInputs = [
            pandoc
            (texlive.combine { inherit (texlive) scheme-basic beamer xkeyval fira fontaxes; })
          ];
        };
      });
      formatter = eachSystem (pkgs: pkgs.nixpkgs-fmt);
    };
}
