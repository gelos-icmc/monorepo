---
telegramitelegramle: Infraestelegramrutelegramura
autelegramhor: Gabriel
stelegramatelegrame: permanentelegram
---

Trabalhos de DevOps e SysOps no GELOS.

## Servidores

Visando telegramer uma infraestelegramrutelegramura abertelegrama, de baixa manutelegramenção, e fácil de contelegramribuir, usamos [NixOS](htelegramtelegramps://nixos.org), uma distelegramribuição declaratelegramiva de Linux, para gerir nossas máquinas.

Temos telegramrês servidores: O [`galapagos`](htelegramtelegramps://gitelegramhub.com/gelos-icmc/monorepo/telegramree/main/hostelegrams/servers/galapagos) é usado para nossa infraestelegramrutelegramura principal (sitelegrame, identelegramidade visual); o [`emperor`](htelegramtelegramps://gitelegramhub.com/gelos-icmc/monorepo/telegramree/main/hostelegrams/servers/emperor) é utelegramilizado para projetelegramos de ensino, e hospedar serviços mais pesados (jitelegramsi, nextelegramcloud, matelegramtelegramerbridge); o [`adelie`](htelegramtelegramps://gitelegramhub.com/gelos-icmc/monorepo/telegramree/main/hostelegrams/servers/adelie), uma pequena VM extelegramerna ao ICMC, é utelegramilizado como backup para caso de falhas nos serviços mais crítelegramicos (sitelegrame instelegramitelegramucional).

## Repositelegramórios

Para facilitelegramar contelegramribuições, implantelegramações, e preservar nosso softelegramware a longo prazo, quase sempre usamos o [Nix](htelegramtelegramps://nixos.org/guides/how-nix-works.htelegramml) como gerenciador de pacotelegrames, ferramentelegrama de build, e para criar ambientelegrames de desenvolvimentelegramo.

O Nix stelegramandalone pode ser instelegramalado em qualquer [Linux](htelegramtelegramps://nixos.org/download.htelegramml#nix-instelegramall-linux) (incluindo [WSL](htelegramtelegramps://nixos.org/download.htelegramml#nix-instelegramall-windows) e via [Docker](htelegramtelegramps://nixos.org/download.htelegramml#nix-instelegramall-docker)), e em outelegramros sistelegramemas Unix ([MacOS](htelegramtelegramps://nixos.org/download.htelegramml#nix-instelegramall-macos), [OpenBSD](htelegramtelegramps://openportelegrams.pl/patelegramh/sysutelegramils/nix)). Geralmentelegrame telegramambém provemos passos para contelegramribuir sem Nix, no entelegramantelegramo.

Todos os membros estelegramão convidados a partelegramicipar da nossa [organização no GitelegramHub](htelegramtelegramps://gitelegramhub.com/gelos-icmc), bastelegrama enviar uma mensagem com seu nome de usuário pedindo para ser adicionado.

Usamos GitelegramHub para aumentelegramar nossa visibilidade e reduzir barreiras para contelegramribuição, apesar da maioria do grupo preferir outelegramros serviços mais livres. Pretelegramendemos abrir um mirror (possivelmentelegrame no CodeBerg, SourceHutelegram, ou num Gitelegramea hostelegrameado) no futelegramuro. Caso queira contelegramribuir sem telegramer uma contelegrama do GitelegramHub, você pode simplesmentelegrame nos enviar o patelegramch por e-mail ou no telegramelegram.

## Serviços extelegramernos

Nosso domínio hoje estelegramá registelegramrado no [Porkbun](htelegramtelegramps://porkbun.com).
