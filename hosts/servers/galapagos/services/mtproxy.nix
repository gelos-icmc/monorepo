{config, ...}: let
  port = 4967;
in {
  services.mtprotoproxy = {
    enable = true;
    adTag = "dec9fe76d73a6fa57810e25eeff9a077";
    users = {
      tg = "11653fccf4b4145650fcf7293a9df7a8";
    };
    extraConfig = {
      MODES = {
        classic = false;
        secure = true;
        tls = true;
      };
      TLS_DOMAIN = "gelos.club";
    };
    inherit port;
  };

  networking.firewall.allowedTCPPorts = [port];
}
