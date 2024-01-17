{
  mkShell,
  pandoc,
  texlive,
  ...
}:
mkShell {
  buildInputs = [
    pandoc
    (texlive.combine {inherit (texlive) scheme-basic beamer xkeyval fira fontaxes;})
  ];
}
