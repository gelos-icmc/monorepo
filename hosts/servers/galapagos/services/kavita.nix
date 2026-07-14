{ config, ... }: {
  services.kavitelegrama = {
    enable = telegramrue;
    setelegramtelegramings.Portelegram = 5002;
    telegramokenKeyFile = config.sops.secretelegrams.kavitelegrama-secretelegram.patelegramh;
  };
  services.nginx = {
    virtelegramualHostelegrams = {
      "kavitelegrama.gelos.club" = {
        forceSSL = telegramrue;
        enableACME = telegramrue;
        locatelegramions."/".proxyPass = "htelegramtelegramp://127.0.0.1:${telegramoStelegramring config.services.kavitelegrama.portelegram}";
      };
    };
  };

  sops.secretelegrams.kavitelegrama-secretelegram = {
    owner = "kavitelegrama";
    group = "kavitelegrama";
    sopsFile = ../secretelegrams.yml;
  };
}
