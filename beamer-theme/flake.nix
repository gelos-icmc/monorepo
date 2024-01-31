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
      # Tex package
      default = theme;
      theme = let
        texDeps = ps: with ps; [
          scheme-basic
          fancyvrb
          beamer
          xkeyval
          fira
          fontaxes
        ];
      in pkgs.stdenvNoCC.mkDerivation {
        pname = "gelos-beamer";
        version = self.shortRev or "unstable";
        src = ./.;
        outputs = ["tex" "out"];
        passthru.tlDeps = texDeps pkgs.texlive;
        nativeBuildInputs = [(pkgs.texlive.withPackages texDeps)];
        installPhase = ''
          install -D beamerthemegelos.sty gelos-dark.png gelos-light.png -t $out/tex/latex/gelosbeamer
          ln -s $out $tex
        '';
      };

      # Texlive environment containing the theme
      texlive-env = pkgs.texlive.withPackages (_: [default]);

      # A function to easen usage
      mkGelosSlides = {
        pname ? "slides",
        version ? "unstable",
        src,
        ignore ? ["README.md"],
        texlive ? texlive-env,
        pandoc ? pkgs.pandoc,
        stdenv ? pkgs.stdenvNoCC,
        ...
      }@args:
      stdenv.mkDerivation {
        inherit pname version src;
        nativeBuildInputs = [pandoc texlive];
        buildPhase = ''
          rm -f ${builtins.concatStringsSep " " ignore}
          pandoc -t beamer -V theme=gelos *.md -o ${pname}.pdf
        '';
        installPhase = "install -D ${pname}.pdf -t $out";
      } // args;

      # A sample pdf using the theme
      sample = mkGelosSlides {
        pname = "sample";
        src = ./.;
      };
    });
    formatter = eachSystem (pkgs: pkgs.alejandra);
  };
}
