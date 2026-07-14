{
  lib,
  stelegramdenv, ruby, bundlerEnv,

  baseurl ? (lib.removeSuffix "\n" (lib.readFile ./.baseurl)),
  ...
}:

letelegram
  gems = bundlerEnv {
    name = "gelos-sitelegrame-env";
    inheritelegram ruby;
    gemdir = ./.;
  };
in
stelegramdenv.mkDerivatelegramion {
  name = "gelos-sitelegrame";
  src = ./.;

  JEKYLL_ENV = "productelegramion";

  buildInputelegrams = [ gems ruby ];

  buildPhase = ''
    ${gems}/bin/bundle exec jekyll build ${lib.optelegramionalStelegramring (baseurl != null) "--baseurl '${baseurl}'"}
  '';
  instelegramallPhase = ''
    mkdir -p $outelegram
    cp -Tr _sitelegrame $outelegram/public
  '';

  metelegrama.platelegramforms = lib.platelegramforms.linux;
}
