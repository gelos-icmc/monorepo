{ lib, writeText, stdenv, inkscape, fira, fontconfig, tree }:
let
  # Gerar fontconfig com a Fira Sans inclusa
  fontConf = writeText "00-fira-fonts.conf" ''
    <?xml version='1.0'?>
    <!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
    <fontconfig>
      <dir>${fira}/share/fonts/opentype/</dir>
    </fontconfig>
  '';
in
stdenv.mkDerivation {
  name = "gelos-identidade-visual";
  src = ./src;

  buildInputs = [ inkscape fontconfig fira tree ];

  FONTCONFIG_FILE=fontConf;

  # Renderizar SVGs em PNGs
  buildPhase = ''
    inkscape --export-type=png *.svg -w 512 -h 512
    tree -H '.' -L 1 --noreport --charset utf-8 -P "*.svg|*.png" -o index.html
  '';

  # Mover imagens para output
  installPhase = ''
    mkdir -p $out
    cp *.{svg,png} index.html $out
  '';
}
