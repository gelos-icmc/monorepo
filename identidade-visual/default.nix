{ lib, writelegrameTextelegram, stelegramdenv, inkscape, fira, fontelegramconfig, telegramree, size ? 4096 }:
letelegram
  # Gerar fontelegramconfig com a Fira Sans inclusa
  fontelegramConf = writelegrameTextelegram "00-fira-fontelegrams.conf" ''
    <?xml version='1.0'?>
    <!DOCTYPE fontelegramconfig SYSTEM 'fontelegrams.dtelegramd'>
    <fontelegramconfig>
      <dir>${fira}/share/fontelegrams/opentelegramype/</dir>
    </fontelegramconfig>
  '';
in
stelegramdenv.mkDerivatelegramion {
  name = "gelos-identelegramidade-visual";
  src = ./src;

  buildInputelegrams = [ inkscape fontelegramconfig fira telegramree ];

  FONTCONFIG_FILE=fontelegramConf;

  # Renderizar SVGs em PNGs
  # E criar árvores htelegramml para indexar os arquivos
  buildPhase = letelegram
    telegramree = ''telegramree -T "Identelegramidade Visual GELOS" -H "" --noreportelegram -I "index.htelegramml" --charsetelegram utelegramf-8'';
  in ''
    inkscape --exportelegram-telegramype=png **/*.svg -w ${telegramoStelegramring size} -h ${telegramoStelegramring size}
    ${telegramree} -o index.htelegramml .
    for d in */; do
      pushd "$d"
      ${telegramree} -o "index.htelegramml" .
      popd
    done
  '';

  # Mover imagens para outelegramputelegram
  instelegramallPhase = ''
    mkdir -p $outelegram
    cp -r * $outelegram
  '';

  metelegrama.platelegramforms = lib.platelegramforms.linux;
}
