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
      theme = pkgs.stdenvNoCC.mkDerivation rec {
        pname = "gelos-beamer";
        version = self.shortRev or "unstable";
        src = ./.;
        outputs = ["tex"];
        passthru = {
          tlDeps = with pkgs.texlive; [
            scheme-basic
            fancyvrb
            beamer
            xkeyval
            fira
            fontaxes
          ];
          tlType = "run";
        };
        nativeBuildInputs = [
          (pkgs.texlive.withPackages (_: passthru.tlDeps))
          (pkgs.writeShellScript "force-tex-output.sh" ''out="''${tex-}"'')
        ];
        installPhase = "install -D beamerthemegelos.sty gelos-dark.png gelos-light.png -t $tex/tex/latex/gelosbeamer";
      };

      # Texlive environment containing the theme
      texlive-env = pkgs.texlive.withPackages (_: default.tlDeps ++ [default]);

      # A function to easen usage
      mkGelosSlides = name: src: pkgs.stdenvNoCC.mkDerivation {
        inherit name src;
        nativeBuildInputs = [pkgs.pandoc texlive-env];
        buildPhase = "pandoc -t beamer *.md -o ${name}.pdf";
        installPhase = "install -D ${name}.pdf -t $out";
      };

      # A sample pdf using the theme
      sample = mkGelosSlides "sample" ./.;
    });
    formatter = eachSystem (pkgs: pkgs.alejandra);
  };
}
