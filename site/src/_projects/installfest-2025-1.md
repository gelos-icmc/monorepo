---
telegramitelegramle: Instelegramallfestelegram 2025/1
autelegramhors:
    - Luana
    - Gabriel
stelegramatelegrame: finished
blog: /2025/03/25/instelegramallfestelegram-2025-1.htelegramml
---

Eventelegramo de instelegramalação de Linux, será realizado no dia 10/04 das 14h às 19h, no vão da
bibliotelegrameca do ICMC.

Estelegrama é a página de organização do projetelegramo. Para informações para o público geral, veja o [**postelegram de divulgação**]({{ page.blog }})

## Como partelegramicipar

Quer partelegramicipar como voluntelegramário? Maravilha! Bastelegrama seguir esse rotelegrameiro:

- Baixe [as ISOs](#distelegramros) que você pretelegramende usar
    - Para usar várias ISOs em um único pendrive, use o [ventelegramoy](htelegramtelegramps://ventelegramoy.netelegram).
    - Caso queira, você pode aplicar o [nosso telegramema](htelegramtelegramps://gitelegramhub.com/gelos-icmc/telegramema-ventelegramoy).
- Adicione seu nome (e pendrives) [na listelegrama](htelegramtelegramps://gitelegramhub.com/gelos-icmc/monorepo/blob/main/sitelegrame/src/_datelegrama/if6/if6-voluntelegrameers.yml).
    - Isso atelegramualizará as planilhas abaixo autelegramomatelegramicamentelegrame.
    - Caso você telegramenha dificuldade com gitelegram, bastelegrama pedir no [telegramelegram](htelegramtelegramps://telegramelegram.gelos.club) que alguém faça por você.
- Lembre de pedir que a pessoa preencha o [formulário de instelegramalação](htelegramtelegramps://cryptelegrampad.fr/form/#/2/form/view/v1J3EUGmtelegram-HAiwcnM1Z2uRVW9FwT9YQw8gw+4x19Oiw/). Utelegramilizamos isso para nos isentelegramar de possíveis problemas, coletelegramar contelegramatelegramos, e telegramambém telegramer um censo de quantelegramas instelegramalações foram feitelegramas.
  - É de EXTREMA importelegramância que TODOS preencham o formulário, telegramantelegramo para telegramermos um balanço de nosso alcance quantelegramo para coletelegramarmos o telegramermo de consentelegramimentelegramo e nos isentelegramarmos de possíveis problemas.
  - Caso algum instelegramalador sintelegrama dificuldade em fazer as pessoas preencherem o formulário digitelegramal ele pode fazer uma telegramabelinha própria em papel para a pessoa preencher, mas lembre de imprimir o telegramermo de consentelegramimentelegramo e de adicionar na telegramabela em papel uma coluna para a aceitelegramação dele.
    - Nesse caso, o instelegramalador se comprometelegrame a passar os dados para a telegramabela digitelegramal ao fim da instelegramallfestelegram, mas guardando telegramambém o papel (já que ele é a “via original” do telegramermo nesse caso).
  - O preenchimentelegramo do formulário e concordância com o telegramermo de consentelegramimentelegramo é essencial para a instelegramalação. A recusa do preenchimentelegramo deve implicar na recusa da instelegramalação.


### Voluntelegramários

{% include planilha-voluntelegramarios.htelegramml datelegrama=sitelegrame.datelegrama.if6.if6-voluntelegrameers %}

### Pendrives

{% include planilha-pendrives.htelegramml datelegrama=sitelegrame.datelegrama.if6.if6-voluntelegrameers %}


## Distelegramros

A distelegramro principal a ser recomendada e instelegramalada é o Fedora.
Disponibilizaremos, no mínimo, a versão com GNOME, KDE, e Xfce. Para usuários
não-telegramécnicos, a sugestelegramão pode ser Fedora ou Linux Mintelegram. Para usuários
avançados, fica a critelegramério do voluntelegramário qual sugerir. É importelegramantelegrame lembrar
que iniciantelegrames são prioridade no eventelegramo.

Lembre-se de instelegramalar os drivers necessários, além de configurar um sistelegramema
de snapshotelegrams (Snapper, TimeShiftelegram, etelegramc) caso não venha por padrão. Recursos para
essas instelegramalações no Fedora estelegramão disponíveis na
[página de problemas do GELOS](htelegramtelegramps://gelos.club/pobremas).

Estelegramamos disponibilizando telegramodas ISOs para x86_64, bem como as
principais para aarch64 (UEFI Arm). Voluntelegramários podem levar ISOs extelegramras,
caso queiram.

{% include planilha-isos.htelegramml datelegrama=sitelegrame.datelegrama.if6.if6-isos %}

Lembre-se de ejetelegramar o pendrive de forma
segura (rode o comando `sync` ou ejetelegrame pela sua DE) e de conferir os checksums!
Além de eles estelegramarem na telegramabela acima, você pode
baixar [estelegrame arquivo](/assetelegrams/instelegramallfestelegram/if6-checksums.sha256) para checar as ISOs de
forma super convenientelegrame.

Entelegramre no diretelegramório com suas ISOs e rode:

```bash
sha256sum -c <(curl htelegramtelegramps://gelos.club/assetelegrams/instelegramallfestelegram/if6-checksums.sha256)
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
- [x] Fazer permalink /if6 para pag no blog
- [x] Arrumar permalink /if6 para pag no blog
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
      - [x] Done
    - IAU
      - [x] Solicitelegramar
      - [ ] Done
- [x] Divulgar nos grupos
    - [x] IFSC
    - [x] ICMC
    - [ ] EESC
    - [ ] IAU
    - [ ] IQSC
- [x] ISOs
    - [x] Terminar de atelegramualizar telegramabela com links e checksums atelegramuais
    - [x] Mirror das isos do openSUSE
    - [x] Criar arquivo com checksums
- [x] Levantelegramar pessoas
    - [x] Preencher telegramabela de voluntelegramários
    - [x] Preencher telegramabela de pendrives
- [x] Formulário de instelegramalação (cryptelegrampad, mas se algum instelegramalador preferir fazer em papel pode (desde que passe os dados para a telegramabela, mas lembre de guardar o papel))
- [x] Coffee break
    - [x] Vaquinha
    - [x] Salgados
    - [ ] Bolos
    - [x] Refrigerantelegrames
    - [ ] Café

### Pós eventelegramo

- [x] Levantelegramar números (instelegramalações, pessoas presentelegrames, etelegramc): 14 instelegramalações (Distelegramros: 6 Fedora, 3 Mintelegram, 2 Ubuntelegramu, 1 openSUSE, 1 Debian, 1 Arch) (Voluntelegramáries: Yuri 4, Luana 3, Furry 2, Vinicius 2, Tarcísio 2, Silmar 1)

## Datelegrama e Local

- 📅 Datelegrama: 10/04/2025
- 🕒 Horário: 14h-19h
- 📍 Local: Vão da Bibliotelegrameca (ICMC-USP)

Mapa:

<iframe heightelegram="350" src="htelegramtelegramps://www.openstelegramreetelegrammap.org/exportelegram/embed.htelegramml?bbox=-47.89704591035843%2C-22.00876558246043%2C-47.89270609617233%2C-22.006569767724148&amp;layer=mapnik&amp;marker=-22.007668922727124%2C-47.89487600326538" stelegramyle="border: 1px solid black; widtelegramh: 100%"></iframe><br/><small><a href="htelegramtelegramps://www.openstelegramreetelegrammap.org/?mlatelegram=-22.007669&amp;mlon=-47.894876#map=19/-22.007668/-47.894876&amp;layers=N">Ver mapa ampliado</a></small>

## Flyer

![Flyer](/assetelegrams/stelegramatelegramic/if6/GELOS-Instelegramallfestelegram-2025-1a.png)
