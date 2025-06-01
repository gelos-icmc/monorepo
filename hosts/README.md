# Configurações de NixOS do GELOS

Esse subprojeto inclui configurações para nossos servidores e desktops.

## Testando

Você pode evaluar e buildar cada host individualmente, por exemplo, usando `nix`:

```
nix build .#nixosConfigurations.<nome>.config.system.build.toplevel
```

Na maioria dos casos, você pode buildar e rodar uma VM com:
```
nix run .#nixosConfigurations.<nome>.config.system.build.vmWithBootloader
```

Com o caveat que serviços que dependem de segredos (e.g. matterbridge) não funcionarão.

## Melhorias futuras

Pretendemos criar testes automáticos no futuro, inclusive mockando segredos onde fizer sentido.
