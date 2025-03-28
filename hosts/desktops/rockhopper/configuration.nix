# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../common
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "rockhopper"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.tiago = {
    isNormalUser = true;
    description = "GELOS-Tiago"; # infra (nixos config) cloned on this user's home
    extraGroups = [ "networkmanager" "wheel" ];
    initialPassword = "gelos2024";
    packages = [
    ];
  };
  users.users.misterio = {
    isNormalUser = true;
    description = "Gabriel GELOS";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.luana = {
    isNormalUser = true;
    description = "Luana";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.furry = {
    isNormalUser = true;
    description = "Furry";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.yuri = {
    isNormalUser = true;
    description = "Yuri";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.ze = {
    isNormalUser = true;
    description = "Zé Guilherme";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [
    ];
  };
  users.users.radio = {
    isNormalUser = true;
    description = "Radio";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [
    ];
  };



}
