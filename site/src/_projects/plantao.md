---
title: Plantões de Dúvidas
lang: pt-BR
state: permanent
author: Luana
---

Plantões para tirar dúvidas com Linux e outras ferramentas livres.

Usa Linux e esbarrou em algum problema? Usa algum software open source e tem alguma dúvida? Estamos aqui para ajudar!

Nos plantões, haverá ao menos ume voluntárie na sala do GELOS (3-153) para tirar dúvidas ou ajudar a resolver problemas com Linux ou outros softwares livres ou open source.
Caso tenha um problema ou precise de alguma ajuda, é só aparecer!

Confira abaixo as próximas datas

## Próximos Horários

| Data                | Horário                 | Voluntárie(s)    |
|---------------------|-------------------------|------------------|
| Mais datas em breve!|                         |                  |


*Para se voluntariar, basta [editar](https://github.com/gelos-icmc/monorepo/blob/main/site/src/_projects/plantao.md) a tabela acima e adicionar os dias e horários que você estará na salinha para ajudar*

## Problemas Recorrentes

Tendo em vista manter uma documentação para consulta futura, aqui são listados os problemas que encontramos nos plantões (ou nas installfests), bem como suas respectivas soluções.

#### Como converter Windows Legacy para UEFI, para dual boot
- [Artigo Bom](https://answers.microsoft.com/en-us/windows/forum/all/convert-an-existing-windows-10-installation-from/aa8c2de3-460b-4a8c-b30b-641405f800d7) ([arquivado (telegram)](https://telegram.gelos.club/34212/382318))
- Erro sobre WinRE pode ser ignorado caso a operação tenha dado certo.


##### Como instalar drivers da NVidia no Fedora
- [Artigo bom](https://www.blogopcaolinux.com.br/2025/02/Instalando-o-driver-da-NVIDIA-no-Fedora.html) ([arquivado](http://web.archive.org/web/20250318222628/https://www.blogopcaolinux.com.br/2025/02/Instalando-o-driver-da-NVIDIA-no-Fedora.html))
- Em outras distros o processo pode ser mais fácil (como no openSUSE), mas a parte do MOK management é necessária em todas as distros com um kernel relativamente recente quando o secure boot está ativo. Atenção para não perder o timing do "Press any key to perform MOK management". O MOK Management é necessário em atualizações também, então pode ser interessante ter uma tópico mais detalhado sobre isso aqui na pag de problemas no futuro, ensinar o dono do dispositivo a fazer ou, na pior das hipóteses, quando possível, desativar o secure boot (esse último é melhor evitar, e além disso desativar o secure boot não é uma opção em casos de dual boot com o windows 11)
  - Desativar verificação dos módulos do kernel para evitar o MOK: `mokutil --disable-validation`

##### Como instalar drivers da NVidia no openSUSE
- [Wiki Oficial](https://en.opensuse.org/SDB:NVIDIA_drivers)

#### Como instalar snapper no Fedora
- [Artigo bom](https://www.andotech.net/installing-snapper-on-fedora-a-comprehensive-guide/) ([arquivado](http://web.archive.org/web/20250318222639/https://www.andotech.net/installing-snapper-on-fedora-a-comprehensive-guide/))

#### Jogos via proton/wine não abrindo devido ao SELinux
- Fix: `sudo setsebool -P selinuxuser_execmod 1`
- Alternativa: Desativar o SELinux.
- [Mais informações e outros problemas com o SELinux](https://en.opensuse.org/Portal:SELinux/Common_issues#Steam_Proton,_Bottles,_WINE,_Lutris,_not_working) ([arquivado](https://web.archive.org/web/20250322122844/https://en.opensuse.org/Portal:SELinux/Common_issues#Steam_Proton,_Bottles,_WINE,_Lutris,_not_working))

#### dpkg --configure -a congela em Pregenerating ConTeXtv MarkIV
- Data do ocorrido: 30/09/2024 (plantào)
- Voluntário: Luana, Furry
- Distro: Mint
- Descrição: dpkg --configure -a congela em Pregenerating ConTeXtv MarkIV
- Solução: dpkg -r context-modules; dpkg -r texlive-full; dpkg -r context; rodar o  dpkg --configure -a novamente; atualizar o sistema
  - Aparentemente uma outra possível solução é ficar segurando enter até destravar, mas isso não funcionou para a gente

#### "Operation system not found"
- Data do ocorrido: 14/03/2024 (installfest)
- Voluntário: Luana
- Distro: Fedora, openSUSE Tumbleweed
- Descrição: A sequência de eventos foi a seguinte
  - Tentamos instalar fedora, instalador não detectava disco algum
  - Instalamos openSUSE, funcionou (único problema sendo que o grub não detectava o Windows)
  - O instalendo decidiu que não queria mais dual boot
  - Possível razão para o fedora não ver o disco: aparentemente era um RAID segundo o gparted, apesar de ter apenas 1 ssd (?)
  - Apagamos o disco (new partition table) e testamos o fedora novamente
  - O fedora passou a detectar o disco
  - Desde então, qualquer distro que a gente tentava instalar a instalação finalizava com sucesso, mas então o computador falava “Operation System Not Found”
  - Testamos o openSUSE novamente e diversas formas diferentes de particionar, o problema persistia
  - Descobrimos que a opção “Boot from Hard Drive” do pendrive do openSUSE conseguia ‘bootar’ o grub, então deixamos um pendrive com o instalendo enquanto uma solução não era encontrava
- Workaround: Alguns dias depois arrumei usando um workaround: instalar o Windows novamente
  - Instalador do Windows dava diversos erros, por último o “Não podemos criar uma nova partição ou encontrar uma existente.“
  - Seguindo um [tutorial](https://br.easeus.com/partition-manager-tips/nao-foi-possivel-criar-nova-particao-ou-localizar-existente.html) pra esse problema ([archived](https://web.archive.org/web/20240321141548/https://br.easeus.com/partition-manager-tips/nao-foi-possivel-criar-nova-particao-ou-localizar-existente.html)) (usando o diskpart no prompt de comando) resolve
  - Instalação completa com sucesso e tudo funciona.
  - A partir daí, pode instalar o Linux por cima.
  - Agora fico curiosa para saber como que o Windows particionou o disco (talvez pudessemos usar isso como base para resolver o problema sem precisar instalar o windows), mas não me atentei em ver isso na hora.

#### Backlight não funcional
- Data do ocorrido: 14/03/2024 (installfest)
- Voluntário:
- Distro: Arch, Fedora, openSUSE Tumbleweed
- Descrição: A tela funcionava, no entanto a backlight parava assim que o sistema ou instalador bootava
- Solução: Nenhuma durante o evento. Link potencialmente relacionado: https://hansdegoede.livejournal.com/26427.html

## Plantões Passados

| Data                | Horário                  | Atendidos                                    | Voluntárie(s)      |
|---------------------|--------------------------|----------------------------------------------|--------------------|
| 27/08/2025          |   15:00 ~ 17:20          | 2 (inst debian, db tumbleweed+w10)| Luana, Grilo |
| 18/08/2025          |   15:00 ~ 19:30          | 1 (instalar Mint)   | Luana, Gabs e Abin |
| 30/05/2025          |   15:30 ~ 20:00          | 3 (aula nix (3), fediverso, site (1))        | Luana e Kauê       |
| 23/05/2025          |   10:20 ~ 12:20          | 0                                                      | Luana               |
| 15/05/2025          |   15:40 ~ 18:50          | 2 (db win+fedora, macbook fedora eduroam troubleshoot) | Luana e Gus         |
| 09/05/2025          |   10:40 ~ 18:00          | 3 (db win+opensuse, ajuda NixOS, db win+opensuse)      | Luana               | 
| 04/04/2025          |   14:50 ~ 19:00          | 2 (arrumar jogo steam, ajuda programação)          | Luana, Gabs e Lívia | 
| 28/03/2025          |   14:30 ~ 19:10          | 3 (troca gutta p/ fedora, troca win11 p/ opensuse, dúvidas servidores)|Luana e Gabs|
| 21/03/2025          |   14:50 ~ 19:05          | 2 (dual boot openSUSE+w10, troubleshoot btrfs corruption)| Luana e Kauê |
| 17/03/2025          |   16:00 ~ 18:20          | 1 (fedora (db win11), drivers Nvidia e snapper)| Luana e Yuri     |
| 11/03/2025          |   14:20 ~ 16:00          | 1 (NixOS Wayland screenshare Discord (atualizar NixOS))| Luana    |
| 11/12/2024          |   15:00 ~ 18:15          | 1 (ajuda com nix flakes)                     |Luana, Vinicius e Niko|
| 20/11/2024          |   15:00 ~ 19:00          | 2 (dual boot openSUSE+w10, troca hd)         |Luana e Zé          |
| 28/10/2024          |   15:10 ~ 17:40          | 0                                            | Luana              |
| 14/10/2024          |   15:00 ~ 17:40          | 0 (atividades internas)                      | Luana              |
| 30/09/2024          |   14:00 ~ 20:10          | 1 (atualizar R p/ inst GGally, Mint 21.1->22)| Furry, Luana e Niko|
| 25/09/2024          |   16:30 ~ 18:30          | 2 (troca hd+endeavour, troca teclado)        |        Luana       |     
| 20/09/2024          |   15:00 ~ 18:00          | 1 (NixOS)                                    |        Luana       |
| 16/09/2024          |   15:00 ~ 17:40          | 1 (pytorch)                                  | Furry, Luana e Yuri|
| 26/08/2024          |   15:10 ~ 18:40          | 1 (db-win10+kubuntu)                         | Furry, Luana e Yuri|
