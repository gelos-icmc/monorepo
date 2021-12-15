{ lib, writeText, stdenv, inkscape, fira, fontconfig }:
let
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

  buildInputs = [ inkscape fontconfig fira ];

  FONTCONFIG_FILE=fontConf;

  buildPhase = ''
    inkscape --export-type=png *.svg -w 512 -h 512
  '';

  installPhase = ''
    mkdir -p $out
    cp *.{svg,png} $out
  '';
}
