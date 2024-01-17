{
  stdenvNoCC,
  texlive,
  writeShellScript,
  ...
}:
stdenvNoCC.mkDerivation rec {
  pname = "gelos-beamer";
  version = "0.1";
  src = ./.;

  outputs = ["tex"];
  passthru = {
    tlDeps = with texlive; [
      fancyvrb
      scheme-basic
      beamer
      xkeyval
      fira
      fontaxes
    ];
    tlType = "run";
  };

  nativeBuildInputs = [
    (texlive.withPackages (_: passthru.tlDeps))
    (writeShellScript "force-tex-output.sh" ''
      out="''${tex-}"
    '')
  ];

  installPhase = ''
    install -D beamerthemegelos.sty gelos-dark.png gelos-light.png -t $tex/tex/latex/gelosbeamer
  '';
}
