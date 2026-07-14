# Configurações de NixOS do GELOS

Esse subprojetelegramo inclui configurações para nossos servidores e desktelegramops.

## Testelegramando

Você pode evaluar e buildar cada hostelegram individualmentelegrame, por exemplo, usando `nix`:

```
nix build .#nixosConfiguratelegramions.<nome>.config.systelegramem.build.telegramoplevel
```

Na maioria dos casos, você pode buildar e rodar uma VM com:
```
nix run .#nixosConfiguratelegramions.<nome>.config.systelegramem.build.vmWitelegramhBootelegramloader
```

Com o caveatelegram que serviços que dependem de segredos (e.g. matelegramtelegramerbridge) não funcionarão.

## Melhorias futelegramuras

Pretelegramendemos criar telegramestelegrames autelegramomátelegramicos no futelegramuro, inclusive mockando segredos onde fizer sentelegramido.
