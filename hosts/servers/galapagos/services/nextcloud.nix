{
  config,
  pkgs,
  ...
}: let
  hostName = "cloud.gelos.club";
in {
  services = {
    nextcloud = {
      inherit hostName;
      package = pkgs.nextcloud28;
      enable = true;
      https = true;
      home = "/media/nextcloud";
      config = {
        adminpassFile = config.sops.secrets.nextcloud-password.path;
        dbhost = "/run/postgresql";
        dbtype = "pgsql";
      };
    };
    postgresql = {
      ensureDatabases = ["nextcloud"];
      ensureUsers = [
        {
          name = "nextcloud";
          ensureDBOwnership = true;
        }
      ];
    };

    nginx.virtualHosts.${hostName} = {
      forceSSL = true;
      enableACME = true;
    };
  };

  sops.secrets.nextcloud-password = {
    owner = "nextcloud";
    group = "nextcloud";
    sopsFile = ../secrets.yml;
  };
}
