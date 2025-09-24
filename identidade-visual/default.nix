{ lib, writeText, stdenv, inkscape, fira, fontconfig, tree, size ? 4096 }:
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
    tree = ''tree -T "Identidade Visual GELOS" -H "" --noreport -I "index.html" --charset utf-8'';
  in ''
    inkscape --export-type=png **/*.svg -w ${toString size} -h ${toString size}
    ${tree} -o index.html .
    for d in */; do
      pushd "$d"
      ${tree} -o "index.html" .
      popd
    done
  '';

  # Mover imagens para output
  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';

  meta.platforms = lib.platforms.linux;
}
