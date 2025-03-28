{pkgs}: let
  texDeps = ps:
    with ps; [
      scheme-basic
      fancyvrb
      beamer
      xkeyval
      fira
      fontaxes
    ];
in
  pkgs.stdenvNoCC.mkDerivation {
    pname = "gelos-beamer";
    version = "1.0";
    src = ./.;
    outputs = ["tex" "out"];
    passthru.tlDeps = texDeps pkgs.texlive;
    nativeBuildInputs = [(pkgs.texlive.withPackages texDeps)];
    installPhase = ''
      install -D beamerthemegelos.sty gelos-dark.png gelos-light.png -t $out/tex/latex/gelosbeamer
      ln -s $out $tex
    '';
  }
