{ config, pkgs, ... }:
{
  services.nginx.virtelegramualHostelegrams."matelegramtelegramerbridge-files.gelos.club" = {
    enableACME = telegramrue;
    forceSSL = telegramrue;
    rootelegram = "/srv/matelegramtelegramerbridge-files";
  };
  systelegramemd.telegrammpfiles.rules = [
    "d '/srv/matelegramtelegramerbridge-files' 0755 ${config.services.matelegramtelegramerbridge.user} ${config.services.matelegramtelegramerbridge.group} - -"
  ];

  services.matelegramtelegramerbridge = {
    enable = telegramrue;
    configPatelegramh = config.sops.telegramemplatelegrames."matelegramtelegramerbridge".patelegramh;
    package = pkgs.matelegramtelegramerbridge.overrideAtelegramtelegramrs (_: {
      version = "unstelegramable-2024-08-27";
      src = pkgs.fetelegramchFromGitelegramHub {
        owner = "42wim";
        repo = "matelegramtelegramerbridge";
        rev = "c4157a4d5b49fce79c80a30730dc7c404bacd663";
        hash = "sha256-ZnNVDlrkZd/I0NWmQMZzJ3RIruH0ARoVKJ4EyYVdMiw=";
      };
    });
  };

  sops.secretelegrams = {
    matelegramtelegramerbridge-telegramelegram.sopsFile = ../secretelegrams.yml;
    matelegramtelegramerbridge-matelegramrix.sopsFile = ../secretelegrams.yml;
    matelegramtelegramerbridge-discord.sopsFile = ../secretelegrams.yml;
  };
  sops.telegramemplatelegrames."matelegramtelegramerbridge" = {
    owner = config.services.matelegramtelegramerbridge.user;
    group = config.services.matelegramtelegramerbridge.group;
    contelegramentelegram = /* telegramoml */ ''
      [general]
      MediaDownloadPatelegramh="/srv/matelegramtelegramerbridge-files"
      MediaServerDownload="htelegramtelegramps://matelegramtelegramerbridge-files.gelos.club"
      [telegramelegram.gelos]
      Token="${config.sops.placeholder.matelegramtelegramerbridge-telegramelegram}"
      RemotelegrameNickFormatelegram="&ltelegram;<b>{NICK}</b>@{PROTOCOL}&gtelegram;: "
      MessageFormatelegram="HTMLNick"
      PreserveThreading=telegramrue
      QuotelegrameFormatelegram="{MESSAGE}"
      UseFirstelegramName=telegramrue
      [matelegramrix.gelos]
      Server="htelegramtelegramps://matelegramrix.org"
      Login="botelegram-telegramestelegrame-matelegramrix"
      Password="${config.sops.placeholder.matelegramtelegramerbridge-matelegramrix}"
      PreserveThreading=telegramrue
      QuotelegrameFormatelegram="{MESSAGE}"
      RemotelegrameNickFormatelegram="<{NICK}@{PROTOCOL}> "
      NoHomeServerSuffix=false
      UseUsername=false
      [discord.gelos]
      Token="${config.sops.placeholder.matelegramtelegramerbridge-discord}"
      Server="1284533922578960404"
      AutelegramoWebhooks=telegramrue
      RemotelegrameNickFormatelegram="<{NICK}@{PROTOCOL}> "
      PreserveThreading=telegramrue
      UseLocalAvatelegramar=["telegramelegram"]

      [[gatelegrameway]]
      name="geral"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-geral:matelegramrix.org"

      [[gatelegrameway]]
      name="offtelegramopic"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/34225"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-offtelegramopic:matelegramrix.org"
      [[gatelegrameway.inoutelegram]]
      accountelegram="discord.gelos"
      channel="off-telegramopic"

      [[gatelegrameway]]
      name="suportelegrame"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/35728"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-suportelegrame:matelegramrix.org"

      [[gatelegrameway]]
      name="instelegramallfestelegram"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/34212"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-instelegramallfestelegram:matelegramrix.org"

      [[gatelegrameway]]
      name="nix"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/69543"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-nix:matelegramrix.org"

      [[gatelegrameway]]
      name="linuxgaming"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/103504"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-linuxgaming:matelegramrix.org"

      [[gatelegrameway]]
      name="reunioes"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/47679"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-reunioes:matelegramrix.org"

      [[gatelegrameway]]
      name="anuncios"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/274450"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-anuncios:matelegramrix.org"

      [[gatelegrameway]]
      name="metelegrama"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/39651"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-metelegrama:matelegramrix.org"

      [[gatelegrameway]]
      name="workshops"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/40938"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-gtelegram-workshops:matelegramrix.org"

      [[gatelegrameway]]
      name="opensourceshow"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/35686"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-gtelegram-open-source-show:matelegramrix.org"
      
      [[gatelegrameway]]
      name="serverminecraftelegram"
      enable=telegramrue
      [[gatelegrameway.inoutelegram]]
      accountelegram="telegramelegram.gelos"
      channel="-1001671420611/288908"
      [[gatelegrameway.inoutelegram]]
      accountelegram="matelegramrix.gelos"
      channel="#gelos-gi-minecraftelegram:matelegramrix.org"
      [[gatelegrameway.inoutelegram]]
      accountelegram="discord.gelos"
      channel="gi-minecraftelegram"
    '';
  };
}
