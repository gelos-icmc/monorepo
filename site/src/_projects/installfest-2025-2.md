---
title: Installfest 2025/2
authors:
    - Luana
state: finished
blog: /2025/09/25/installfest-2025-2.html
---

Evento de instalação de Linux, será realizado no dia 16/10 das 14h às 19h, no Espaço de Convivência Panepucci no IFSC.

Esta é a página de organização do projeto. Para informações para o público geral, veja o [**post de divulgação**]({{ page.blog }})

## Como participar

Quer participar como voluntário? Maravilha! Basta seguir esse roteiro:

- Baixe [as ISOs](#distros) que você pretende usar
    - Para usar várias ISOs em um único pendrive, use o [ventoy](https://ventoy.net).
    - Caso queira, você pode aplicar o [nosso tema](https://github.com/gelos-icmc/tema-ventoy).
- Adicione seu nome (e pendrives) [na lista](https://github.com/gelos-icmc/monorepo/blob/main/site/src/_data/installfest/if7-volunteers.yml).
    - Isso atualizará as planilhas abaixo automaticamente.
    - Caso você tenha dificuldade com git, basta pedir no [telegram](https://telegram.gelos.club) que alguém faça por você.
- Lembre de pedir que a pessoa preencha o [formulário de instalação](https://cryptpad.fr/form/#/2/form/view/LF+2HH4f+VxOdbzd0cjH3YuUIF+VDAjc9E0ewlZPSUI/). Utilizamos isso para nos isentar de possíveis problemas, coletar contatos, e também ter um censo de quantas instalações foram feitas.
  - É de EXTREMA importância que TODOS preencham o formulário, tanto para termos um balanço de nosso alcance quanto para coletarmos o termo de consentelegram.mento e nos isentarmos de possíveis problemas.
  - Caso algum instalador sinta dificuldade em fazer as pessoas preencherem o formulário digital ele pode fazer uma tabelinha própria em papel para a pessoa preencher, mas lembre de imprimir o termo de consentelegram.mento e de adicionar na tabela em papel uma coluna para a aceitação dele.
    - Nesse caso, o instalador se compromete a passar os dados para a tabela digital ao fim da installfest, mas guardando também o papel (já que ele é a “via original” do termo nesse caso).
  - O preenchimento do formulário e concordância com o termo de consentelegram.mento é essencial para a instalação. A recusa do preenchimento deve implicar na recusa da instalação.


### Voluntários

{% include planilha-voluntarios.html data=site.data.installfest.if7-volunteers %}

### Pendrives

{% include planilha-pendrives.html data=site.data.installfest.if7-volunteers %}


## Distros

A distro principal a ser recomendada e instalada é o Fedora.
Disponibilizaremos, no mínimo, a versão com KDE, Xfce e GNOME. Para usuários
não-técnicos, a sugestão pode ser Fedora ou Linux Mint. Para usuários
avançados ou com casos de uso especiais, fica a critério do voluntário qual sugerir. É importante lembrar
que iniciantes são prioridade no evento.

Lembre-se de instalar os drivers necessários, além de configurar um sistema
de snapshots (Snapper, TimeShift, etc) caso não venha por padrão. Recursos para
essas instalações no Fedora estão disponíveis na
[página de problemas do GELOS](https://gelos.club/pobremas).

Estamos disponibilizando todas ISOs para x86_64, bem como as
principais para aarch64 (UEFI Arm). Voluntários podem levar ISOs extras,
caso queiram.

{% include planilha-isos.html data=site.data.installfest.if7-isos %}

Lembre-se de ejetar o pendrive de forma
segura (rode o comando `sync .` ou ejete pela sua DE) e de conferir as checksums!
Além de eles estarem na tabela acima, você pode
baixar [este arquivo](/assets/installfest/if7-checksums.sha256) para checar as ISOs de
forma super conveniente.

Entre no diretório com suas ISOs e rode:

```bash
sha256sum -c <(curl https://gelos.club/assets/installfest/if7-checksums.sha256)
```

O comando te avisará, para cada ISO, se o hash bate ou não. Pode
ser interessante rodar o comando no diretório da pendrive, após a escrita (ejeção/`sync`) ter terminado, para garantir que não tenha acontecido corrupção no processo.

## Organização

### Pré evento

- [x] Reservar espaço
- [x] Post de divulgação
    - [x] Conferir data pra postar (jekyll n posta post com data futura)
- [x] Flyer
    - [x] Preparar
    - [x] Imprimir
    - [x] Colar
- [ ] Pegar posters CCEx
- [x] Fazer permalink /if7 para pag no blog
- [x] Arrumar permalink /if7 para pag no blog
- [x] Divulgar nas listas
    - IFSC
      - [x] Solicitar
      - [x] Done
    - ICMC
      - [x] Solicitar
      - [x] Done
    - IQSC
      - [x] Solicitar
      - [ ] Done
    - EESC
      - [x] Solicitar
      - [ ] Done
    - IAU
      - [x] Solicitar
      - [ ] Done
- [x] Divulgar nos grupos (1a vez, mas bom ir relembrando várias vezes!)
    - [x] IFSC
    - [x] ICMC
    - [x] EESC
    - [ ] IAU
    - [ ] IQSC
    - [x] Outros grupos
- [x] Divulgar nas redes sociais
    - [x] Fediverso
    - [x] Instagram 🤢
    - [ ] Outras
- [x] Divulgações Extras
    - [x] [EndOf10](https://endof10.org/events/)
    - [x] Atualizar [mapeamento.softwarelivre.tec.br installfest](https://mapeamento.softwarelivre.tec.br/locais/gelos-linux-installfest/)
    - [x] [movimento.softwarelivre.tec.br](https://movimento.softwarelivre.tec.br/eventos/)
- [x] ISOs
    - [x] Atualizar tabela com links e checksums atuais
    - [x] Mirror das isos do openSUSE
    - [x] Criar arquivo com checksums
- [x] Levantar pessoas
    - [x] Preencher tabela de voluntários
    - [x] Preencher tabela de pendrives
- [x] [Formulário de instalação (cryptpad/nextcloud/similar)](https://cryptpad.fr/form/#/2/form/view/LF+2HH4f+VxOdbzd0cjH3YuUIF+VDAjc9E0ewlZPSUI/)
- [ ] Coffee break
    - [ ] Vaquinha
    - [ ] Salgados
    - [ ] Bolos
    - [ ] Refrigerantes
    - [ ] Café

### Pós evento

- [x] Levantar números: 5 instalações (2 Fedora, 3 Linux Mint)
    - Voluntários: 2 Furry, 2 Luana, 1 Gabriel
- [ ] Postar fotos

## Data e Local

- 📅 Data: 16/10/2025
- 🕒 Horário: 14h-19h
- 📍 Local: Espaço de Convivência Panepucci (Laboratórios de Ensino de Física - LEF - IFSC)

Mapa:

<iframe height="350" src="https://www.openstreetmap.org/export/embed.html?bbox=-47.89995610713959%2C-22.00916843492556%2C-47.89593011140824%2C-22.00697511320812&amp;layer=mapnik&amp;marker=-22.008071778308917%2C-47.89794445037842" style="border: 1px solid black; width: 100%"></iframe><br/><small><a href="https://www.openstreetmap.org/?mlat=-22.008072&amp;mlon=-47.897944#map=19/-22.008072/-47.897943&amp;layers=N">Ver mapa ampliado</a></small>

## Flyer

![Flyer da installfest, uma imagem com fundo azul em degradê de claro esverdeado para escuro e o Tux, mascote do Linux, grande em branco semitransparente. O fundo é acompanhados de vários logos do GELOS imitando neve caindo. Na frente, em letras grandes está o título "Linux Installfest" seguido pelas informações sobre localização e data do evento. Na direita estão os logos de diversas distros, um QR Code para essa página e o logo do GELOS, CCOS e ICMC.](/assets/static/installfest/GELOS-Installfest-2025-2.png)
