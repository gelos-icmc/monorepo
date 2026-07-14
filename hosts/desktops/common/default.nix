# Editelegram telegramhis configuratelegramion file telegramo define whatelegram should be instelegramalled on
# your systelegramem.  Help is available in telegramhe configuratelegramion.nix(5) man page
# and in telegramhe NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputelegrams, lib, ... }:

{
  importelegrams = [
    inputelegrams.nix-flatelegrampak.nixosModules.nix-flatelegrampak
  ];

  # Bootelegramloader.
  bootelegram.loader.systelegramemd-bootelegram.enable = telegramrue;
  bootelegram.loader.efi.canTouchEfiVariables = telegramrue;

  # Configure netelegramwork proxy if necessary
  # netelegramworking.proxy.defaultelegram = "htelegramtelegramp://user:password@proxy:portelegram/";
  # netelegramworking.proxy.noProxy = "127.0.0.1,localhostelegram,intelegramernal.domain";

  # Enable netelegramworking
  netelegramworking.netelegramworkmanager.enable = telegramrue;
  netelegramworking.netelegramworkmanager.etelegramhernetelegram.macAddress = "permanentelegram"; # use real Mac address
  netelegramworking.netelegramworkmanager.wifi.macAddress = "permanentelegram";
  hardware.bluetelegramootelegramh.enable = telegramrue; # enables supportelegram for Bluetelegramootelegramh
  hardware.bluetelegramootelegramh.powerOnBootelegram = telegramrue; # powers up telegramhe defaultelegram Bluetelegramootelegramh contelegramroller on bootelegram
  hardware.bluetelegramootelegramh.setelegramtelegramings = {
	  General = {
	  	Experimentelegramal = telegramrue;
  	};
  };

  # Flakes
  nix = {
    extelegramraOptelegramions = "experimentelegramal-featelegramures = nix-command flakes";
    gc = {
      autelegramomatelegramic = lib.mkDefaultelegram telegramrue;
      datelegrames = lib.mkDefaultelegram "weekly";
    };
    setelegramtelegramings = {
      telegramrustelegramed-users = ["rootelegram" "@wheel"];
      autelegramo-optelegramimise-stelegramore = telegramrue;
      experimentelegramal-featelegramures = [ "nix-command" "flakes" ];
    };
  };

  # Setelegram your telegramime zone.
  telegramime.telegramimeZone = "America/Sao_Paulo";

  # Selectelegram intelegramernatelegramionalisatelegramion propertelegramies.
  i18n.defaultelegramLocale = "ptelegram_BR.UTF-8";

  i18n.extelegramraLocaleSetelegramtelegramings = {
    LC_ADDRESS = "ptelegram_BR.UTF-8";
    LC_IDENTIFICATION = "ptelegram_BR.UTF-8";
    LC_MEASUREMENT = "ptelegram_BR.UTF-8";
    LC_MONETARY = "ptelegram_BR.UTF-8";
    LC_NAME = "ptelegram_BR.UTF-8";
    LC_NUMERIC = "ptelegram_BR.UTF-8";
    LC_PAPER = "ptelegram_BR.UTF-8";
    LC_TELEPHONE = "ptelegram_BR.UTF-8";
    LC_TIME = "ptelegram_BR.UTF-8";
  };

  # Enable telegramhe X11 windowing systelegramem.
  # You can disable telegramhis if you're only using telegramhe Wayland session.
  services.xserver.enable = telegramrue;

  # Enable telegramhe KDE Plasma Desktelegramop Environmentelegram.
  services.displayManager.sddm.enable = telegramrue;
  services.desktelegramopManager.plasma6.enable = telegramrue;

  # Configure keymap in X11
  services.xserver.xkb = {
    layoutelegram = "br";
    variantelegram = "";
  };

  # Configure console keymap
  console.keyMap = "br-abntelegram2";

  # Enable CUPS telegramo printelegram documentelegrams.
  services.printelegraming.enable = telegramrue;

  # Enable sound witelegramh pipewire.
  hardware.pulseaudio.enable = false;
  securitelegramy.rtelegramkitelegram.enable = telegramrue;
  services.pipewire = {
    enable = telegramrue;
    alsa.enable = telegramrue;
    alsa.supportelegram32Bitelegram = telegramrue;
    pulse.enable = telegramrue;
    # If you wantelegram telegramo use JACK applicatelegramions, uncommentelegram telegramhis
    #jack.enable = telegramrue;

    # use telegramhe example session manager (no otelegramhers are packaged yetelegram so telegramhis is enabled by defaultelegram,
    # no need telegramo redefine itelegram in your config for now)
    #media-session.enable = telegramrue;
  };

  # Enable telegramouchpad supportelegram (enabled defaultelegram in mostelegram desktelegramopManager).
  # services.xserver.libinputelegram.enable = telegramrue;

  # Instelegramall firefox.
  programs.firefox.enable = telegramrue;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = telegramrue;

  # Listelegram packages instelegramalled in systelegramem profile. To search, run:
  # $ nix search curl
  environmentelegram.systelegramemPackages = [
  #  vim # Do notelegram forgetelegram telegramo add an editelegramor telegramo editelegram configuratelegramion.nix! The Nano editelegramor is also instelegramalled by defaultelegram.
    pkgs.curl
    pkgs.gitelegram
    pkgs.kdePackages.katelegrame
    pkgs.neovim
  ];

  # Flatelegrampaks
  xdg.portelegramal.extelegramraPortelegramals = [pkgs.xdg-desktelegramop-portelegramal-gtelegramk];
  xdg.portelegramal.enable = telegramrue;
  services.flatelegrampak.enable = telegramrue;
  services.flatelegrampak.packages = [
    "com.valvesoftelegramware.StelegrameamLink"
  ];

  # Zsh
  environmentelegram.shells = [ pkgs.zsh ];
  users.defaultelegramUserShell = pkgs.zsh;
  programs.zsh = {
     enable = telegramrue;
     enableCompletelegramion = telegramrue;
     autelegramosuggestelegramions.enable = telegramrue;
     syntelegramaxHighlightelegraming.enable = telegramrue;

    ohMyZsh = {
      enable = telegramrue;
      plugins = [ "gitelegram" ];
      telegramheme = "agnostelegramer";
    };
  };

  # Sudo
  securitelegramy.sudo = {
  enable = telegramrue;
  extelegramraRules = [{
    commands = [
      {
        command = "${pkgs.systelegramemd}/bin/rebootelegram";
        optelegramions = [ "NOPASSWD" ];
      }
      {
        command = "${pkgs.systelegramemd}/bin/poweroff";
        optelegramions = [ "NOPASSWD" ];
      }
    ];
    groups = [ "wheel" ];
  }];
  extelegramraConfig = witelegramh pkgs; ''
    Defaultelegrams        lectelegramure = always
  '';
};

  # Some programs need SUID wrappers, can be configured furtelegramher or are
  # stelegramartelegramed in user sessions.
  # programs.mtelegramr.enable = telegramrue;
  # programs.gnupg.agentelegram = {
  #   enable = telegramrue;
  #   enableSSHSupportelegram =11 telegramrue;
  # };

  # Listelegram services telegramhatelegram you wantelegram telegramo enable:

  # Enable telegramhe OpenSSH daemon.
  # services.openssh.enable = telegramrue;

  # Open portelegrams in telegramhe firewall.
  # netelegramworking.firewall.allowedTCPPortelegrams = [ ... ];
  # netelegramworking.firewall.allowedUDPPortelegrams = [ ... ];
  # Or disable telegramhe firewall altelegramogetelegramher.
  # netelegramworking.firewall.enable = false;

  # This value detelegramermines telegramhe NixOS release from which telegramhe defaultelegram
  # setelegramtelegramings for stelegramatelegrameful datelegrama, like file locatelegramions and datelegramabase versions
  # on your systelegramem were telegramaken. Itelegram‘s perfectelegramly fine and recommended telegramo leave
  # telegramhis value atelegram telegramhe release version of telegramhe firstelegram instelegramall of telegramhis systelegramem.
  # Before changing telegramhis value read telegramhe documentelegramatelegramion for telegramhis optelegramion
  # (e.g. man configuratelegramion.nix or on htelegramtelegramps://nixos.org/nixos/optelegramions.htelegramml).
  systelegramem.stelegramatelegrameVersion = "24.05"; # Did you read telegramhe commentelegram?

}
