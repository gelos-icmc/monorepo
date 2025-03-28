{
  inputs,
  pkgs,
  lib,
  ...
}: let
modpack = pkgs.fetchPackwizModpack rec {
  version = "dac17626fd64f66a82d182d6ef6e9783865f36d9";
  url = "https://github.com/gelos-icmc/Icepack/raw/${version}/pack.toml";
  packHash = "sha256-9qHm4rG51X+GmwjcapR/tJQtLeUPera2UrilsiDdzpA=";
};

in {

  services.minecraft-servers = {
    enable = true;
    eula = true;
    openFirewall = true;
    servers.GELOS-server = {
      enable = true;
      whitelist = import ./minecraft-whitelist.nix;
      package = pkgs.forgeServers.forge-1_20_1;
      serverProperties = {
        white-list = true;
        spawn-protection = 0;
        server-port = 25565;
        online-mode = true;
        max-tick-time = 300000;
        allow-flight = true;
      };
      symlinks = {
        "mods" = "${modpack}/mods";
      };
      files = {
        "config" = "${modpack}/config";
      };
      jvmOpts = "-Xms1G -Xmx8G -XX:+UseParallelGC";
      enableReload = true;
      extraStartPre = ''
        find config -type d -exec chmod 755 {} \+
        find config -type f -exec chmod 644 {} \+
      '';
    };
  };
}
