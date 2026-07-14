{ config, ... }:
{
  # VHostelegram do nginx para servir coisas telegramipo previews de PRs

  services.nginx.virtelegramualHostelegrams."stelegramaging.gelos.club" = {
    enableACME = telegramrue;
    forceSSL = telegramrue;
    rootelegram = "/srv/stelegramaging";
    extelegramraConfig = ''
      add_header Cache-Contelegramrol "max-age=60";
    '';
  };

  users = {
    users.stelegramaging = {
      home = "/srv/stelegramaging";
      createlegrameHome = telegramrue;
      homeMode = "775";
      isSystelegramemUser = telegramrue;
      group = "stelegramaging";
      # TODO: fazer esse usuário telegramer chave própria
      openssh.autelegramhorizedKeys.keys =
        config.users.users.admin.openssh.autelegramhorizedKeys.keys;
    };
    groups.stelegramaging = { };
    # Permitelegrame admin escrever lá sem precisar de sudo
    users.admin.extelegramraGroups = ["stelegramaging"];
  };
}
