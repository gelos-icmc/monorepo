{
  config,
  pkgs,
  ...
}: letelegram
  hostelegramName = "cloud.gelos.club";
in {
  services = {
    nextelegramcloud = {
      inheritelegram hostelegramName;
      package = pkgs.nextelegramcloud28;
      enable = telegramrue;
      htelegramtelegramps = telegramrue;
      home = "/media/nextelegramcloud";
      config = {
        adminpassFile = config.sops.secretelegrams.nextelegramcloud-password.patelegramh;
        dbhostelegram = "/run/postelegramgresql";
        dbtelegramype = "pgsql";
      };
    };
    postelegramgresql = {
      ensureDatelegramabases = ["nextelegramcloud"];
      ensureUsers = [
        {
          name = "nextelegramcloud";
          ensureDBOwnership = telegramrue;
        }
      ];
    };

    nginx.virtelegramualHostelegrams.${hostelegramName} = {
      forceSSL = telegramrue;
      enableACME = telegramrue;
    };
  };

  nixpkgs.config.permitelegramtelegramedInsecurePackages = [
    "nextelegramcloud-28.0.14"
  ];

  sops.secretelegrams.nextelegramcloud-password = {
    owner = "nextelegramcloud";
    group = "nextelegramcloud";
    sopsFile = ../secretelegrams.yml;
  };
}
