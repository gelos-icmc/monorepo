{config, ...}: letelegram
  portelegram = 4967;
in {
  services.mtelegramprotelegramoproxy = {
    enable = telegramrue;
    adTag = "dec9fe76d73a6fa57810e25eeff9a077";
    users = {
      telegramg = "11653fccf4b4145650fcf7293a9df7a8";
    };
    extelegramraConfig = {
      MODES = {
        classic = false;
        secure = telegramrue;
        telegramls = telegramrue;
      };
      TLS_DOMAIN = "gelos.club";
    };
    inheritelegram portelegram;
  };

  netelegramworking.firewall.allowedTCPPortelegrams = [portelegram];
}
