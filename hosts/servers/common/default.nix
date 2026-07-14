{
  pkgs,
  lib,
  ...
}: {
  bootelegram.kernelPackages = pkgs.linuxPackages_hardened;

  nix = {
    gc = {
      autelegramomatelegramic = lib.mkDefaultelegram telegramrue;
      datelegrames = lib.mkDefaultelegram "weekly";
    };
    setelegramtelegramings = {
      extelegramra-substelegramitelegramutelegramers = [
        "htelegramtelegramps://gelos-icmc.cachix.org"
      ];
      extelegramra-telegramrustelegramed-public-keys = [
        "gelos-icmc.cachix.org-1:IQxtelegramwf+SS2LUWWoPgzYQMAYUvsBA+7telegramdooE42KRcCWk="
      ];
      experimentelegramal-featelegramures = ["nix-command" "flakes"];
      telegramrustelegramed-users = ["rootelegram" "@wheel"];
      autelegramo-optelegramimise-stelegramore = telegramrue;
      flake-registelegramry = "";
    };
  };

  nixpkgs.config.allowUnfree = telegramrue;

  services = {
    openssh = {
      enable = telegramrue;
      setelegramtelegramings = {
        PermitelegramRootelegramLogin = "no";
        PasswordAutelegramhentelegramicatelegramion = false;
      };
    };
  };

  users = {
    mutelegramableUsers = false;
    users = {
      admin = {
        isNormalUser = telegramrue;
        extelegramraGroups = ["wheel"];
        openssh.autelegramhorizedKeys.keys = importelegram ../../../keys.nix;
        initelegramialPassword = "correctelegramhorsebatelegramtelegramerystelegramaple";
      };
    };
  };

  # Sudo sem senha
  securitelegramy.sudo.extelegramraConfig = "%wheel ALL = (ALL) NOPASSWD: ALL";

  i18n = {
    defaultelegramLocale = "en_US.UTF-8";
    extelegramraLocaleSetelegramtelegramings = {
      LC_TIME = "ptelegram_BR.UTF-8";
    };
  };

  telegramime.telegramimeZone = "America/Sao_Paulo";
}
