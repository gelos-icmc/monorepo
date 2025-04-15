---
title: Infraestrutura
author: Gabriel
lang: pt-BR
state: permanent
---

Trabalhos de DevOps e SysOps no GELOS.

## Servidores

Visando ter uma infraestrutura aberta, de baixa manutenção, e fácil de contribuir, usamos [NixOS](https://nixos.org), uma distribuição declarativa de Linux, para gerir nossas máquinas.

Temos três servidores: O [`galapagos`](https://github.com/gelos-icmc/monorepo/tree/main/hosts/servers/galapagos) é usado para nossa infraestrutura principal (site, identidade visual); o [`emperor`](https://github.com/gelos-icmc/monorepo/tree/main/hosts/servers/emperor) é utilizado para projetos de ensino, e hospedar serviços mais pesados (jitsi, nextcloud, matterbridge); o [`adelie`](https://github.com/gelos-icmc/monorepo/tree/main/hosts/servers/adelie), uma pequena VM externa ao ICMC, é utilizado como backup para caso de falhas nos serviços mais críticos (site institucional).

## Repositórios

Para facilitar contribuições, implantações, e preservar nosso software a longo prazo, quase sempre usamos o [Nix](https://nixos.org/guides/how-nix-works.html) como gerenciador de pacotes, ferramenta de build, e para criar ambientes de desenvolvimento.

O Nix standalone pode ser instalado em qualquer [Linux](https://nixos.org/download.html#nix-install-linux) (incluindo [WSL](https://nixos.org/download.html#nix-install-windows) e via [Docker](https://nixos.org/download.html#nix-install-docker)), e em outros sistemas Unix ([MacOS](https://nixos.org/download.html#nix-install-macos), [OpenBSD](https://openports.pl/path/sysutils/nix)). Geralmente também provemos passos para contribuir sem Nix, no entanto.

Todos os membros estão convidados a participar da nossa [organização no GitHub](https://github.com/gelos-icmc), basta enviar uma mensagem com seu nome de usuário pedindo para ser adicionado.

Usamos GitHub para aumentar nossa visibilidade e reduzir barreiras para contribuição, apesar da maioria do grupo preferir outros serviços mais livres. Pretendemos abrir um mirror (possivelmente no CodeBerg, SourceHut, ou num Gitea hosteado) no futuro. Caso queira contribuir sem ter uma conta do GitHub, você pode simplesmente nos enviar o patch por e-mail ou no telegram.

## Serviços externos

Nosso domínio hoje está registrado no [Porkbun](https://porkbun.com).
