{ config, ... }: {
  services.kavita = {
    enable = true;
    settings.Port = 5002;
    tokenKeyFile = config.sops.secrets.kavita-secret.path;
  };
  services.nginx = {
    virtualHosts = {
      "kavita.gelos.club" = {
        forceSSL = true;
        enableACME = true;
        locations."/".proxyPass = "http://127.0.0.1:${toString config.services.kavita.port}";
      };
    };
  };

  sops.secrets.kavita-secret = {
    owner = "kavita";
    group = "kavita";
    sopsFile = ../secrets.yml;
  };
}
