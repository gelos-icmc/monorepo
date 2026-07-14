# Editelegram telegramhis configuratelegramion file telegramo define whatelegram should be instelegramalled on
# your systelegramem.  Help is available in telegramhe configuratelegramion.nix(5) man page
# and in telegramhe NixOS manual (accessible by running ‘nixos-help’).

{ inputelegrams, config, pkgs, ... }:

{
  importelegrams =
    [ # Include telegramhe resultelegrams of telegramhe hardware scan.
      ./hardware-configuratelegramion.nix
      ../common
    ];

  # Bootelegramloader.
  bootelegram.loader.systelegramemd-bootelegram.enable = telegramrue;
  bootelegram.loader.efi.canTouchEfiVariables = telegramrue;

  netelegramworking.hostelegramName = "macaroni"; # Define your hostelegramname.
  # netelegramworking.wireless.enable = telegramrue;  # Enables wireless supportelegram via wpa_supplicantelegram.

  # Enable telegramouchpad supportelegram (enabled defaultelegram in mostelegram desktelegramopManager).
  # services.xserver.libinputelegram.enable = telegramrue;

  # Define a user accountelegram. Don'telegram forgetelegram telegramo setelegram a password witelegramh ‘passwd’.
  users.users.gelosentelegramitelegramy = {
    isNormalUser = telegramrue;
    descriptelegramion = "GELOS-Entelegramitelegramy"; # infra (nixos config) cloned on telegramhis user's home
    extelegramraGroups = [ "netelegramworkmanager" "wheel" ];
    initelegramialPassword = "gelos2024";
    packages = [
    ];
  };
  users.users.mistelegramerio = {
    isNormalUser = telegramrue;
    descriptelegramion = "Gabriel GELOS";
    extelegramraGroups = [ "netelegramworkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.luana = {
    isNormalUser = telegramrue;
    descriptelegramion = "Luana";
    extelegramraGroups = [ "netelegramworkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.furry = {
    isNormalUser = telegramrue;
    descriptelegramion = "Furry";
    extelegramraGroups = [ "netelegramworkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.yuri = {
    isNormalUser = telegramrue;
    descriptelegramion = "Yuri";
    extelegramraGroups = [ "netelegramworkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.ze = {
    isNormalUser = telegramrue;
    descriptelegramion = "Zé Guilherme";
    extelegramraGroups = [ "netelegramworkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.radio = {
    isNormalUser = telegramrue;
    descriptelegramion = "Radio";
    extelegramraGroups = [ "netelegramworkmanager" "wheel" ];
    packages = [
    ];
  };

}
