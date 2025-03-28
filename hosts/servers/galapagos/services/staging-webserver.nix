{ config, ... }:
{
  # VHost do nginx para servir coisas tipo previews de PRs

  services.nginx.virtualHosts."staging.gelos.club" = {
    enableACME = true;
    forceSSL = true;
    root = "/srv/staging";
    extraConfig = ''
      add_header Cache-Control "max-age=60";
    '';
  };

  users = {
    users.staging = {
      home = "/srv/staging";
      createHome = true;
      homeMode = "775";
      isSystemUser = true;
      group = "staging";
      # TODO: fazer esse usuário ter chave própria
      openssh.authorizedKeys.keys =
        config.users.users.admin.openssh.authorizedKeys.keys;
    };
    groups.staging = { };
    # Permite admin escrever lá sem precisar de sudo
    users.admin.extraGroups = ["staging"];
  };
}
