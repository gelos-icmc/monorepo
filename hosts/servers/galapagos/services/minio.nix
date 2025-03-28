let
  port = 9000;
in {
  services = {
    minio = {
      enable = true;
      listenAddress = ":${toString port}";
      region = "sa-east-1";
    };

    # Proxy reverso, com HTTPS automático pelo lets encrypt
    nginx.virtualHosts."minio.gelos.club" = {
      forceSSL = true;
      enableACME = true;
      locations."/".proxyPass = "http://127.0.0.1:${toString port}";
    };
  };
}
