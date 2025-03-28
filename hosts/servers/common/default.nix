{
  inputs,
  pkgs,
  lib,
  ...
}: {
  boot.kernelPackages = pkgs.linuxPackages_hardened;

  nix = {
    # Adicionar flake inputs no registry
    registry = builtins.mapAttrs (_name: value: {flake = value;}) inputs;
    extraOptions = "experimental-features = nix-command flakes";
    gc = {
      automatic = lib.mkDefault true;
      dates = lib.mkDefault "weekly";
    };
    settings = {
      trusted-users = ["root" "@wheel"];
      auto-optimise-store = true;
    };
  };

  nixpkgs.config.allowUnfree = true;

  services = {
    openssh = {
      enable = true;
      settings = {
        PermitRootLogin = "no";
        PasswordAuthentication = false;
      };
    };
  };

  users = {
    mutableUsers = false;
    users = {
      admin = {
        isNormalUser = true;
        extraGroups = ["wheel"];
        openssh.authorizedKeys.keys = import ../../../keys.nix;
        initialPassword = "correcthorsebatterystaple";
      };
    };
  };

  # Sudo sem senha
  security.sudo.extraConfig = "%wheel ALL = (ALL) NOPASSWD: ALL";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_TIME = "pt_BR.UTF-8";
    };
  };

  time.timeZone = "America/Sao_Paulo";
}
