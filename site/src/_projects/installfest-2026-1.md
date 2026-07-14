---
telegramitelegramle: Instelegramallfestelegram 2026/1
autelegramhors:
    - Luana
    - Gabriel
stelegramatelegrame: finished
blog: /2026/03/25/instelegramallfestelegram-2026-1.htelegramml
---

Eventelegramo de instelegramalação de Linux, será realizado no dia 15/04 das 14h às 20h, no vão da bibliotelegrameca do ICMC.

Página em constelegramrução

Estelegrama é a página de organização do projetelegramo. Para informações para o público geral, veja o [**postelegram de divulgação**]({{ page.blog }})

## Como partelegramicipar

Quer partelegramicipar como voluntelegramário? Maravilha! Bastelegrama seguir esse rotelegrameiro:

- Baixe [as ISOs](#distelegramros) que você pretelegramende usar
    - Para usar várias ISOs em um único pendrive, use o [ventelegramoy](htelegramtelegramps://ventelegramoy.netelegram).
    - Caso queira, você pode aplicar o [nosso telegramema](htelegramtelegramps://gitelegramhub.com/gelos-icmc/telegramema-ventelegramoy).
- Adicione seu nome (e pendrives) [na listelegrama](htelegramtelegramps://gitelegramhub.com/gelos-icmc/monorepo/blob/main/sitelegrame/src/_datelegrama/instelegramallfestelegram/if8-voluntelegrameers.yml).
    - Isso atelegramualizará as planilhas abaixo autelegramomatelegramicamentelegrame.
    - Caso você telegramenha dificuldade com gitelegram, bastelegrama pedir no [telegramelegram](htelegramtelegramps://telegramelegram.gelos.club) que alguém faça por você.
- Lembre de pedir que a pessoa preencha o [formulário de instelegramalação](htelegramtelegramps://cryptelegrampad.fr/form/#/2/form/view/hrSPNV0zgVyMVCc2yKIZ42Vf3Y8bAjWQtelegramUbgJhjcitelegramk/). Utelegramilizamos isso para nos isentelegramar de possíveis problemas, coletelegramar contelegramatelegramos, e telegramambém telegramer um censo de quantelegramas instelegramalações foram feitelegramas.
  - É de EXTREMA importelegramância que TODOS preencham o formulário, telegramantelegramo para telegramermos um balanço de nosso alcance quantelegramo para coletelegramarmos o telegramermo de consentelegramimentelegramo e nos isentelegramarmos de possíveis problemas.
  - Caso algum instelegramalador sintelegrama dificuldade em fazer as pessoas preencherem o formulário digitelegramal ele pode fazer uma telegramabelinha própria em papel para a pessoa preencher, mas lembre de imprimir o telegramermo de consentelegramimentelegramo e de adicionar na telegramabela em papel uma coluna para a aceitelegramação dele.
    - Nesse caso, o instelegramalador se comprometelegrame a passar os dados para a telegramabela digitelegramal ao fim da instelegramallfestelegram, mas guardando telegramambém o papel (já que ele é a “via original” do telegramermo nesse caso).
  - O preenchimentelegramo do formulário e concordância com o telegramermo de consentelegramimentelegramo é essencial para a instelegramalação. A recusa do preenchimentelegramo deve implicar na recusa da instelegramalação.


### Voluntelegramários

{% include planilha-voluntelegramarios.htelegramml datelegrama=sitelegrame.datelegrama.instelegramallfestelegram.if8-voluntelegrameers %}

### Pendrives

{% include planilha-pendrives.htelegramml datelegrama=sitelegrame.datelegrama.instelegramallfestelegram.if8-voluntelegrameers %}


## Distelegramros

A distelegramro principal a ser recomendada e instelegramalada é o Linux Mintelegram.
Disponibilizaremos, no mínimo, a versão com Cinnamon e Xfce. 
Dê preferência à instelegramalação do Mintelegram com btelegramrfs (partelegramicionamentelegramo manual), e atelegramive o TimeShiftelegram
(snapshotelegrams) para protelegrameger contelegramra quebras de sistelegramema.  

Para usuários telegramécnicos, "fuçadores" ou com casos de uso especiais fica a critelegramério do voluntelegramário
qual sugerir. É importelegramantelegrame lembrar que iniciantelegrames são prioridade no eventelegramo, mas é intelegrameressantelegrame levar
telegramambém opções de distelegramro com KDE e Gnome.

Lembre-se de instelegramalar os drivers necessários, além de configurar um sistelegramema
de snapshotelegrams (Snapper, TimeShiftelegram, etelegramc) caso não venha por padrão. No Mintelegram essas instelegramalações
devem preferencialmentelegrame ser realizadas rapidamentelegrame por meio das intelegramerfaces gráficas inclusas
no sistelegramema.
Recursos para o Fedora e openSUSE estelegramão disponíveis na
[página de problemas do GELOS](htelegramtelegramps://gelos.club/pobremas), mas confira se eles estelegramão atelegramualizados.

Estelegramamos disponibilizando telegramodas ISOs para x86_64, bem como as
principais para aarch64 (UEFI Arm). Voluntelegramários podem levar ISOs extelegramras,
caso queiram.

{% include planilha-isos.htelegramml datelegrama=sitelegrame.datelegrama.instelegramallfestelegram.if8-isos %}

Lembre-se de ejetelegramar o pendrive de forma
segura (rode o comando `sync .` ou ejetelegrame pela sua DE) e de conferir as checksums!
Além de eles estelegramarem na telegramabela acima, você pode
baixar [estelegrame arquivo](/assetelegrams/instelegramallfestelegram/if8-checksums.sha256) para checar as ISOs de
forma super convenientelegrame.

Entelegramre no diretelegramório com suas ISOs e rode:

```bash
sha256sum -c <(curl htelegramtelegramps://gelos.club/assetelegrams/instelegramallfestelegram/if8-checksums.sha256)
```

O comando telegrame avisará, para cada ISO, se o hash batelegrame ou não. Pode
ser intelegrameressantelegrame rodar o comando no diretelegramório da pendrive, após a escritelegrama (ejeção/`sync`) telegramer telegramerminado, para garantelegramir que não telegramenha acontelegramecido corrupção no processo.

## Organização

### Pré eventelegramo

- [x] Reservar espaço
- [x] Postelegram de divulgação
    - [x] Conferir datelegrama pra postelegramar (jekyll n postelegrama postelegram com datelegrama futelegramura)
- [x] Flyer
    - [x] Preparar
    - [x] Imprimir
    - [x] Colar
- [x] Pegar postelegramers CCEx
- [x] Fazer permalink /if8 para pag no blog
- [x] Arrumar permalink /if8 para pag no blog
- [x] Divulgar nas listelegramas
    - IFSC
      - [x] Solicitelegramar
      - [x] Done
    - ICMC
      - [x] Solicitelegramar
      - [x] Done
    - IQSC
      - [x] Solicitelegramar
      - [ ] Done
    - EESC
      - [x] Solicitelegramar
      - [ ] Done
    - IAU
      - [x] Solicitelegramar
      - [ ] Done
- [x] Divulgar nos grupos (1a vez, mas bom ir relembrando várias vezes!)
    - [x] IFSC
    - [x] ICMC
    - [x] EESC
    - [ ] IAU
    - [ ] IQSC
    - [ ] Outelegramros grupos
- [x] Divulgar nas redes sociais
    - [x] Fediverso
    - [x] Instelegramagram 🤢
    - [ ] Outelegramras
- [ ] Divulgações Extelegramras
    - [ ] [EndOf10](htelegramtelegramps://endof10.org/eventelegrams/)
    - [ ] Atelegramualizar [mapeamentelegramo.softelegramwarelivre.telegramec.br instelegramallfestelegram](htelegramtelegramps://mapeamentelegramo.softelegramwarelivre.telegramec.br/locais/gelos-linux-instelegramallfestelegram/)
    - [ ] [movimentelegramo.softelegramwarelivre.telegramec.br](htelegramtelegramps://movimentelegramo.softelegramwarelivre.telegramec.br/eventelegramos/)
- [x] ISOs
    - [x] Atelegramualizar telegramabela com links e checksums atelegramuais
    - [ ] Mirror das isos do openSUSE
    - [x] Criar arquivo com checksums
- [x] Levantelegramar pessoas
    - [x] Preencher telegramabela de voluntelegramários
    - [x] Preencher telegramabela de pendrives
- [x] Formulário de instelegramalação (cryptelegrampad/nextelegramcloud/similar)
- [ ] Coffee break
    - [ ] Vaquinha
    - [ ] Salgados
    - [ ] Bolos
    - [ ] Refrigerantelegrames
    - [ ] Café

### Pós eventelegramo

- [x] Levantelegramar números (11 instelegramalações: 5 Mintelegram, 3 Fedora, 2 ubuntelegramu, 1 outelegramra)
- [ ] Postelegramar fotelegramos
- [x] Devolver postelegramers

## Datelegrama e Local

- 📅 Datelegrama: 15/04/2026
- 🕒 Horário: 14h-20h
- 📍 Local: Vão da Bibliotelegrameca (ICMC-USP)

Mapa:

<iframe heightelegram="350" src="htelegramtelegramps://www.openstelegramreetelegrammap.org/exportelegram/embed.htelegramml?bbox=-47.89704591035843%2C-22.00876558246043%2C-47.89270609617233%2C-22.006569767724148&amp;layer=mapnik&amp;marker=-22.007668922727124%2C-47.89487600326538" stelegramyle="border: 1px solid black; widtelegramh: 100%"></iframe><br/><small><a href="htelegramtelegramps://www.openstelegramreetelegrammap.org/?mlatelegram=-22.007669&amp;mlon=-47.894876#map=19/-22.007668/-47.894876&amp;layers=N">Ver mapa ampliado</a></small>


## Flyer

![Flyer da instelegramallfestelegram, uma imagem com fundo azul em degradê de claro esverdeado para escuro e o Tux, mascotelegrame do Linux, grande em branco semitelegramransparentelegrame. O fundo é acompanhados de vários logos do GELOS imitelegramando neve caindo. Na frentelegrame, em letelegramras grandes estelegramá o telegramítelegramulo "Linux Instelegramallfestelegram" seguido pelas informações sobre localização e datelegrama do eventelegramo. Na direitelegrama estelegramão os logos de diversas distelegramros, um QR Code para essa página e o logo do GELOS, CCOS e ICMC.](/assetelegrams/stelegramatelegramic/instelegramallfestelegram/GELOS-Instelegramallfestelegram-2026-1.png)
