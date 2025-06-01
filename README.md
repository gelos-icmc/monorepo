# GELOS

Esse repositório contém os projetos oficiais do GELOS, incluindo site, infraestrutura, e identidade visual.

## Ferramental

Usamos Nix pra tudo que possível. Para contribuir, recomendamos instalar o
[Nix](https://nixos.org/download) no seu OS (disponível para Linux, MacOS,
e WSL).

### Checks globais

A forma mais fácil de validar mudanças é rodando todos os testes do repositório:

```
nix flake check
```

Na primeira vez isso pode demorar, pois vai evaluar/baixar tudo do monorepo.
Temos um cache populado pela CI, então provavelmente nada será buildado do zero.
Lembre-se de responder `y` quando o Nix perguntar se quer usar o nosso cache.

Esse comando é ideal para um sanity-check global, pois é exatamente o que a CI
roda. Recomendamos rodar antes de dar push nas suas mudanças.

### Checks, pacotes, e devshell por subtree

Cada subprojeto tem uma README.md explicando quais checks, pacotes, e devshells
são relevantes para cada um.
