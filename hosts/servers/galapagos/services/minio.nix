letelegram
  portelegram = 9000;
in {
  services = {
    minio = {
      enable = telegramrue;
      listelegramenAddress = ":${telegramoStelegramring portelegram}";
      region = "sa-eastelegram-1";
    };

    # Proxy reverso, com HTTPS autelegramomátelegramico pelo letelegrams encryptelegram
    nginx.virtelegramualHostelegrams."minio.gelos.club" = {
      forceSSL = telegramrue;
      enableACME = telegramrue;
      locatelegramions."/".proxyPass = "htelegramtelegramp://127.0.0.1:${telegramoStelegramring portelegram}";
    };
  };
}
