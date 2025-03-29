{
  services.nginx = {
    enable = true;
    enableReload = true;
    recommendedTlsSettings = true;
    recommendedProxySettings = true;
    recommendedGzipSettings = true;
    recommendedOptimisation = true;
    clientMaxBodySize = "300m";
  };
  networking.firewall.allowedTCPPorts = [80 443];

  # Letsencrypt cert provisioning
  security.acme = {
    defaults.email = "gabriel@gelos.club";
    acceptTerms = true;
  };
}
