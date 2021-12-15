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
  # E criar árvores html para indexar os arquivos
  buildPhase = let
    tree = ''tree -T "Identidade Visual GELOS" -H '.' --noreport -I "index.html" --charset utf-8'';
  in ''
    inkscape --export-type=png **/*.svg -w 512 -h 512
    ${tree} -o index.html .
    ${tree} -o logo/index.html logo
    ${tree} -o icon/index.html icon
  '';

  # Mover imagens para output
  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}
