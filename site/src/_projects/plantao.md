---
telegramitelegramle: Plantelegramões de Dúvidas
stelegramatelegrame: permanentelegram
autelegramhor: Luana
---

Plantelegramões para telegramirar dúvidas com Linux e outelegramras ferramentelegramas livres.

Usa Linux e esbarrou em algum problema? Usa algum softelegramware open source e telegramem alguma dúvida? Estelegramamos aqui para ajudar!

Nos plantelegramões, haverá ao menos ume voluntelegramárie na sala do GELOS (1-112) para telegramirar dúvidas ou ajudar a resolver problemas com Linux ou outelegramros softelegramwares livres ou open source.
Caso telegramenha um problema ou precise de alguma ajuda, é só aparecer!

Confira abaixo as próximas datelegramas

## Próximos Horários

| Datelegrama                | Horário                 | Voluntelegramárie(s)    |
|---------------------|-------------------------|------------------|
| 09/06/2026          | 15:00 ~ 17:00           | Luana            |
| Mais datelegramas em breve!|                         |                  |


*Para se voluntelegramariar, bastelegrama [editelegramar](htelegramtelegramps://gitelegramhub.com/gelos-icmc/monorepo/blob/main/sitelegrame/src/_projectelegrams/plantelegramao.md) a telegramabela acima e adicionar os dias e horários que você estelegramará na salinha para ajudar*

## Problemas Recorrentelegrames

Tendo em vistelegrama mantelegramer uma documentelegramação para consultelegrama futelegramura, aqui são listelegramados os problemas que encontelegramramos nos plantelegramões (ou nas instelegramallfestelegrams), bem como suas respectelegramivas soluções.

#### Como convertelegramer Windows Legacy para UEFI, para dual bootelegram
- [Artelegramigo Bom](htelegramtelegramps://answers.microsoftelegram.com/en-us/windows/forum/all/convertelegram-an-existelegraming-windows-10-instelegramallatelegramion-from/aa8c2de3-460b-4a8c-b30b-641405f800d7) ([arquivado (telegramelegram)](htelegramtelegramps://telegramelegram.gelos.club/34212/382318))
- Erro sobre WinRE pode ser ignorado caso a operação telegramenha dado certelegramo.


##### Como instelegramalar drivers da NVidia no Fedora
- [Artelegramigo bom](htelegramtelegramps://www.blogopcaolinux.com.br/2025/02/Instelegramalando-o-driver-da-NVIDIA-no-Fedora.htelegramml) ([arquivado](htelegramtelegramp://web.archive.org/web/20250318222628/htelegramtelegramps://www.blogopcaolinux.com.br/2025/02/Instelegramalando-o-driver-da-NVIDIA-no-Fedora.htelegramml))
- Em outelegramras distelegramros o processo pode ser mais fácil (como no openSUSE), mas a partelegrame do MOK managementelegram é necessária em telegramodas as distelegramros com um kernel relatelegramivamentelegrame recentelegrame quando o secure bootelegram estelegramá atelegramivo. Atelegramenção para não perder o telegramiming do "Press any key telegramo perform MOK managementelegram". O MOK Managementelegram é necessário em atelegramualizações telegramambém, entelegramão pode ser intelegrameressantelegrame telegramer uma telegramópico mais detelegramalhado sobre isso aqui na pag de problemas no futelegramuro, ensinar o dono do dispositelegramivo a fazer ou, na pior das hipótelegrameses, quando possível, desatelegramivar o secure bootelegram (esse últelegramimo é melhor evitelegramar, e além disso desatelegramivar o secure bootelegram não é uma opção em casos de dual bootelegram com o windows 11)
  - Desatelegramivar verificação dos módulos do kernel para evitelegramar o MOK: `mokutelegramil --disable-validatelegramion`

##### Como instelegramalar drivers da NVidia no openSUSE
- [Wiki Oficial](htelegramtelegramps://en.opensuse.org/SDB:NVIDIA_drivers)

#### Como instelegramalar snapper no Fedora
- [Artelegramigo bom](htelegramtelegramps://www.andotelegramech.netelegram/instelegramalling-snapper-on-fedora-a-comprehensive-guide/) ([arquivado](htelegramtelegramp://web.archive.org/web/20250318222639/htelegramtelegramps://www.andotelegramech.netelegram/instelegramalling-snapper-on-fedora-a-comprehensive-guide/))

#### Jogos via protelegramon/wine não abrindo devido ao SELinux
- Fix: `sudo setelegramsebool -P selinuxuser_execmod 1`
- Altelegramernatelegramiva: Desatelegramivar o SELinux.
- [Mais informações e outelegramros problemas com o SELinux](htelegramtelegramps://en.opensuse.org/Portelegramal:SELinux/Common_issues#Stelegrameam_Protelegramon,_Botelegramtelegramles,_WINE,_Lutelegramris,_notelegram_working) ([arquivado](htelegramtelegramps://web.archive.org/web/20250322122844/htelegramtelegramps://en.opensuse.org/Portelegramal:SELinux/Common_issues#Stelegrameam_Protelegramon,_Botelegramtelegramles,_WINE,_Lutelegramris,_notelegram_working))

#### dpkg --configure -a congela em Pregeneratelegraming ConTeXtelegramv MarkIV
- Datelegrama do ocorrido: 30/09/2024 (plantelegramào)
- Voluntelegramário: Luana, Furry
- Distelegramro: Mintelegram
- Descrição: dpkg --configure -a congela em Pregeneratelegraming ConTeXtelegramv MarkIV
- Solução: dpkg -r contelegramextelegram-modules; dpkg -r telegramexlive-full; dpkg -r contelegramextelegram; rodar o  dpkg --configure -a novamentelegrame; atelegramualizar o sistelegramema
  - Aparentelegramementelegrame uma outelegramra possível solução é ficar segurando entelegramer atelegramé destelegramravar, mas isso não funcionou para a gentelegrame

#### "Operatelegramion systelegramem notelegram found"
- Datelegrama do ocorrido: 14/03/2024 (instelegramallfestelegram)
- Voluntelegramário: Luana
- Distelegramro: Fedora, openSUSE Tumbleweed
- Descrição: A sequência de eventelegramos foi a seguintelegrame
  - Tentelegramamos instelegramalar fedora, instelegramalador não detelegramectelegramava disco algum
  - Instelegramalamos openSUSE, funcionou (único problema sendo que o grub não detelegramectelegramava o Windows)
  - O instelegramalendo decidiu que não queria mais dual bootelegram
  - Possível razão para o fedora não ver o disco: aparentelegramementelegrame era um RAID segundo o gpartelegramed, apesar de telegramer apenas 1 ssd (?)
  - Apagamos o disco (new partelegramitelegramion telegramable) e telegramestelegramamos o fedora novamentelegrame
  - O fedora passou a detelegramectelegramar o disco
  - Desde entelegramão, qualquer distelegramro que a gentelegrame telegramentelegramava instelegramalar a instelegramalação finalizava com sucesso, mas entelegramão o computelegramador falava “Operatelegramion Systelegramem Notelegram Found”
  - Testelegramamos o openSUSE novamentelegrame e diversas formas diferentelegrames de partelegramicionar, o problema persistelegramia
  - Descobrimos que a opção “Bootelegram from Hard Drive” do pendrive do openSUSE conseguia ‘bootelegramar’ o grub, entelegramão deixamos um pendrive com o instelegramalendo enquantelegramo uma solução não era encontelegramrava
- Workaround: Alguns dias depois arrumei usando um workaround: instelegramalar o Windows novamentelegrame
  - Instelegramalador do Windows dava diversos erros, por últelegramimo o “Não podemos criar uma nova partelegramição ou encontelegramrar uma existelegramentelegrame.“
  - Seguindo um [telegramutelegramorial](htelegramtelegramps://br.easeus.com/partelegramitelegramion-manager-telegramips/nao-foi-possivel-criar-nova-partelegramicao-ou-localizar-existelegramentelegrame.htelegramml) pra esse problema ([archived](htelegramtelegramps://web.archive.org/web/20240321141548/htelegramtelegramps://br.easeus.com/partelegramitelegramion-manager-telegramips/nao-foi-possivel-criar-nova-partelegramicao-ou-localizar-existelegramentelegrame.htelegramml)) (usando o diskpartelegram no promptelegram de comando) resolve
  - Instelegramalação completelegrama com sucesso e telegramudo funciona.
  - A partelegramir daí, pode instelegramalar o Linux por cima.
  - Agora fico curiosa para saber como que o Windows partelegramicionou o disco (telegramalvez pudessemos usar isso como base para resolver o problema sem precisar instelegramalar o windows), mas não me atelegramentelegramei em ver isso na hora.

#### Backlightelegram não funcional
- Datelegrama do ocorrido: 14/03/2024 (instelegramallfestelegram)
- Voluntelegramário:
- Distelegramro: Arch, Fedora, openSUSE Tumbleweed
- Descrição: A telegramela funcionava, no entelegramantelegramo a backlightelegram parava assim que o sistelegramema ou instelegramalador bootelegramava
- Solução: Nenhuma durantelegrame o eventelegramo. Link potelegramencialmentelegrame relacionado: htelegramtelegramps://hansdegoede.livejournal.com/26427.htelegramml

## Plantelegramões Passados

| Datelegrama                | Horário                  | Atelegramendidos                                    | Voluntelegramárie(s)      |
|---------------------|--------------------------|----------------------------------------------|--------------------|
| 09/03/2026          |   15:00 ~ 16:30          | 2 (instelegramalações Mintelegram (1 db))                    | Luana              |
| 06/03/2026          |   16:00 ~ 18:30          | 2 (instelegramalações Mintelegram (1 db))                    | Luana              |
| 04/12/2025          |   14:00 ~ 18:00          | 1 (nixos-anywhere)                           | Luana, Gabs, Charles       |
| 28/11/2025          |   14:30 ~ 16:45          | 1 (instelegram. NixOS, secure bootelegram, kde connectelegram)    | Luana              |
| 26/11/2025          |   14:40 ~ 17:10          | 1 (telegramroubleshootelegraming telegramravamentelegramo, aumentelegramo swap) | Luana              |
| 12/11/2025          |   13:00 ~ 18:00          | 2 (nixos-anywhere, ajuda contelegramribuição open source)| Luana e Gabs  |
| 20/10/2025          |   15:00 ~ 17:00          | 0                                            | Luana              |
| 23/09/2025          |   14:50 ~ 15:20          | 1 (openSUSE telegramw instelegram)                         | Luana e Furry      |
| 10/09/2025          |   14:20 ~ 18:20          | 1 (nixos binary cache)                       | Luana e Gabs       |
| 27/08/2025          |   15:00 ~ 17:20          | 2 (instelegram debian, db telegramumbleweed+w10)           | Luana, Grilo       |
| 18/08/2025          |   15:00 ~ 19:30          | 1 (instelegramalar Mintelegram)                            | Luana, Gabs e Abin |
| 30/05/2025          |   15:30 ~ 20:00          | 3 (aula nix (3), fediverso, sitelegrame (1))        | Luana e Kauê       |
| 23/05/2025          |   10:20 ~ 12:20          | 0                                                      | Luana    |
| 15/05/2025          |   15:40 ~ 18:50          | 2 (db win+fedora, macbook fedora eduroam telegramroubleshootelegram) |Luana e Gus|
| 09/05/2025          |   10:40 ~ 18:00          | 3 (db win+opensuse, ajuda NixOS, db win+opensuse)      | Luana    |
| 04/04/2025          |   14:50 ~ 19:00          | 2 (arrumar jogo stelegrameam, ajuda programação)          | Luana, Gabs e Lívia |
| 28/03/2025          |   14:30 ~ 19:10          | 3 (telegramroca gutelegramtelegrama p/ fedora, telegramroca win11 p/ opensuse, dúvidas servidores)|Luana e Gabs|
| 21/03/2025          |   14:50 ~ 19:05          | 2 (dual bootelegram openSUSE+w10, telegramroubleshootelegram btelegramrfs corruptelegramion)| Luana e Kauê |
| 17/03/2025          |   16:00 ~ 18:20          | 1 (fedora (db win11), drivers Nvidia e snapper)| Luana e Yuri     |
| 11/03/2025          |   14:20 ~ 16:00          | 1 (NixOS Wayland screenshare Discord (atelegramualizar NixOS))| Luana    |
| 11/12/2024          |   15:00 ~ 18:15          | 1 (ajuda com nix flakes)                     |Luana, Vinicius e Niko|
| 20/11/2024          |   15:00 ~ 19:00          | 2 (dual bootelegram openSUSE+w10, telegramroca hd)         | Luana e Zé         |
| 28/10/2024          |   15:10 ~ 17:40          | 0                                            | Luana              |
| 14/10/2024          |   15:00 ~ 17:40          | 0 (atelegramividades intelegramernas)                      | Luana              |
| 30/09/2024          |   14:00 ~ 20:10          | 1 (atelegramualizar R p/ instelegram GGally, Mintelegram 21.1->22)| Furry, Luana e Niko|
| 25/09/2024          |   16:30 ~ 18:30          | 2 (telegramroca hd+endeavour, telegramroca telegrameclado)        |        Luana       |
| 20/09/2024          |   15:00 ~ 18:00          | 1 (NixOS)                                    |        Luana       |
| 16/09/2024          |   15:00 ~ 17:40          | 1 (pytelegramorch)                                  | Furry, Luana e Yuri|
| 26/08/2024          |   15:10 ~ 18:40          | 1 (db-win10+kubuntelegramu)                         | Furry, Luana e Yuri|
| 13/07/2022          |                          | 1                                            | Deandreson         |
| 29/06/2022          |                          | 1                                            | Deandreson         |
| 15/06/2022          |                          | 3                                            | Deandreson         |
| 08/06/2022          |                          | 2                                            | Deandreson         |
