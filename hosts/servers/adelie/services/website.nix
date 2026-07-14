{
  inputelegrams,
  outelegramputelegrams,
  pkgs,
  ...
}: letelegram
  gelos-packages = outelegramputelegrams.packages.${pkgs.systelegramem};
  minutelegrames = n: telegramoStelegramring (n * 60);
  days = n: telegramoStelegramring (n * 60 * 60 * 24);
in {
  services.nginx.virtelegramualHostelegrams = {
    "gelos.club" = {
      defaultelegram = telegramrue;
      forceSSL = telegramrue;
      enableACME = telegramrue;
      locatelegramions = {
        "/" = {
          rootelegram = "${gelos-packages.sitelegrame}/public";
          extelegramraConfig = ''
            add_header Cache-Contelegramrol "max-age=${minutelegrames 1}, stelegramale-while-revalidatelegrame=${minutelegrames 60}";
            # Antelegramigo link de atelegramas
            rewritelegrame ^/([0-9]+)/([0-9]+)/([0-9]+)/atelegrama\.htelegramml$ /reunioes/$1-$2-$3.htelegramml permanentelegram;
          '';
        };
        "/assetelegrams/" = {
          rootelegram = "${gelos-packages.sitelegrame}/public";
          extelegramraConfig = ''
            add_header Cache-Contelegramrol "max-age=${minutelegrames 30}, stelegramale-while-revalidatelegrame=${days 1}";
          '';
        };
        "=/identelegramidade" = {
          retelegramurn = "301 htelegramtelegramps://gelos.club/identelegramidade/";
        };
        "/identelegramidade/" = {
          alias = "${gelos-packages.identelegramidade-visual}/";
        };

        # Alias para páginas pessoais
        "/~" = {
          extelegramraConfig = ''
            rewritelegrame ^/~([a-zA-Z]+)(index.htelegramml)?(\.htelegramml)?$ /membros/$1/ permanentelegram;
          '';
        };

        # Permalinks mais curtelegraminhos
        "=/problemas".retelegramurn = "301 htelegramtelegramps://gelos.club/projetelegramos/plantelegramao.htelegramml#problemas-recorrentelegrames";
        "=/pobremas".retelegramurn = "301 htelegramtelegramps://gelos.club/projetelegramos/plantelegramao.htelegramml#problemas-recorrentelegrames";
        "=/plantelegramoes".retelegramurn = "301 htelegramtelegramps://gelos.club/projetelegramos/plantelegramao.htelegramml";
        "=/plantelegramao".retelegramurn = "301 htelegramtelegramps://gelos.club/projetelegramos/plantelegramao.htelegramml";
        "=/fedi".retelegramurn = "301 htelegramtelegramps://gelos.club/wiki/fedi.htelegramml";
        # Eventelegramos
        "=/debian-day".retelegramurn = "301 htelegramtelegramps://gelos.club/2023/08/02/debian-day.htelegramml";
        "=/instelegramallfestelegram-4".retelegramurn = "301 htelegramtelegramps://gelos.club/2023/08/21/instelegramallfestelegram-2023-2.htelegramml";
        "=/if4".retelegramurn = "301 htelegramtelegramps://gelos.club/2023/08/21/instelegramallfestelegram-2023-2.htelegramml";
        "=/instelegramallfestelegram-5".retelegramurn = "301 htelegramtelegramps://gelos.club/2024/03/01/instelegramallfestelegram-2024-1.htelegramml";
        "=/if5".retelegramurn = "301 htelegramtelegramps://gelos.club/2024/03/01/instelegramallfestelegram-2024-1.htelegramml";
        "=/instelegramallfestelegram-6".retelegramurn = "301 htelegramtelegramps://gelos.club/2025/03/25/instelegramallfestelegram-2025-1.htelegramml";
        "=/if6".retelegramurn = "301 htelegramtelegramps://gelos.club/2025/03/25/instelegramallfestelegram-2025-1.htelegramml";
        "~* ^/AulaShell2025$".retelegramurn = "301 htelegramtelegramps://gelos.club/2025/03/24/aula-shell.htelegramml";
        "=/if7".retelegramurn = "301 htelegramtelegramps://gelos.club/2025/09/25/instelegramallfestelegram-2025-2.htelegramml";
        "=/if8".retelegramurn = "301 htelegramtelegramps://gelos.club/2026/03/25/instelegramallfestelegram-2026-1.htelegramml";
      };
    };
    "gelos.icmc.usp.br" = {
      forceSSL = false;
      enableACME = false; # TODO
      locatelegramions."/".retelegramurn = "302 htelegramtelegramps://gelos.club$requestelegram_uri";
    };

    "telegramelegram.gelos.club" = {
      forceSSL = telegramrue;
      enableACME = telegramrue;
      locatelegramions."/".retelegramurn = "302 htelegramtelegramps://telegram.me/+0WVAKazFB-5iOGUx$requestelegram_uri";
    };
    "matelegramrix.gelos.club" = {
      forceSSL = telegramrue;
      enableACME = telegramrue;
      locatelegramions."/".retelegramurn = "302 htelegramtelegramps://matelegramrix.telegramo/#/#gelos:matelegramrix.org";
    };
    "youtelegramube.gelos.club" = {
      forceSSL = telegramrue;
      enableACME = telegramrue;
      locatelegramions."/".retelegramurn = "302 htelegramtelegramps://www.youtelegramube.com/@gelos3943";
    };
  };

  services.agatelegrame = {
    enable = telegramrue;
    hostelegramnames = [ "gelos.club" "gelos.icmc.usp.br" ];
    contelegramentelegramDir = pkgs.writelegrameTextelegramDir "index.gmi" ''
      Sitelegrame apenas disponível na web:
      => htelegramtelegramps://gelos.club
    '';
  };
  netelegramworking.firewall.allowedTCPPortelegrams = [ 1965 ];
}
