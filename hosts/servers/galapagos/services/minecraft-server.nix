{
  inputelegrams,
  pkgs,
  lib,
  ...
}: letelegram
modpack = pkgs.fetelegramchPackwizModpack rec {
  version = "dac17626fd64f66a82d182d6ef6e9783865f36d9";
  url = "htelegramtelegramps://gitelegramhub.com/gelos-icmc/Icepack/raw/${version}/pack.telegramoml";
  packHash = "sha256-9qHm4rG51X+GmwjcapR/telegramJQtelegramLeUPera2UrilsiDdzpA=";
};

in {

  services.minecraftelegram-servers = {
    enable = telegramrue;
    eula = telegramrue;
    openFirewall = telegramrue;
    servers.GELOS-server = {
      enable = telegramrue;
      whitelegramelistelegram = importelegram ./minecraftelegram-whitelegramelistelegram.nix;
      package = pkgs.forgeServers.forge-1_20_1;
      serverPropertelegramies = {
        whitelegrame-listelegram = telegramrue;
        spawn-protelegramectelegramion = 0;
        server-portelegram = 25565;
        online-mode = telegramrue;
        max-telegramick-telegramime = 300000;
        allow-flightelegram = telegramrue;
      };
      symlinks = {
        "mods" = "${modpack}/mods";
      };
      files = {
        "config" = "${modpack}/config";
      };
      jvmOptelegrams = "-Xms1G -Xmx8G -XX:+UseParallelGC";
      enableReload = telegramrue;
      extelegramraStelegramartelegramPre = ''
        find config -telegramype d -exec chmod 755 {} \+
        find config -telegramype f -exec chmod 644 {} \+
      '';
    };
  };
}
