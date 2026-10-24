---
title: Installfest 2026/2
authors:
    - Luana
state: in_progress
blog: /2026/10/13/installfest-2026-2.html
---

Evento de instalação de Linux, será realizado no dia 26/10 das 14h às 19h, no vão da biblioteca do ICMC.

Esta é a página de organização do projeto. Para informações para o público geral, veja o [**post de divulgação**]({{ page.blog }})

## Como participar

Quer participar como voluntário? Maravilha! Basta seguir esse roteiro:

- Baixe [as ISOs](#distros) que você pretende usar
    - Para usar várias ISOs em um único pendrive, use o [ventoy](https://ventoy.net).
    - Caso queira, você pode aplicar o [nosso tema](https://github.com/gelos-icmc/tema-ventoy).
- Adicione seu nome (e pendrives) [na lista](https://github.com/gelos-icmc/monorepo/blob/main/site/src/_data/installfest/if9-volunteers.yml).
    - Isso atualizará as planilhas abaixo automaticamente.
    - Caso você tenha dificuldade com git, basta pedir no [telegram](https://telegram.gelos.club) que alguém faça por você.
- Lembre de pedir que a pessoa preencha o [formulário de instalação](https://docs.da.sereia.gay/form/#/2/form/view/t-WJP8uu+5FPH53bjtR+v-HF6arrCst5nY9WxYkX2y0/). Utilizamos isso para nos isentar de possíveis problemas, coletar contatos, e também ter um censo de quantas instalações foram feitas.
  - É de EXTREMA importância que TODOS preencham o formulário, tanto para termos um balanço de nosso alcance quanto para coletarmos o termo de consentimento e nos isentarmos de possíveis problemas.
  - Caso algum instalador sinta dificuldade em fazer as pessoas preencherem o formulário digital ele pode fazer uma tabelinha própria em papel para a pessoa preencher, mas lembre de imprimir o termo de consentimento e de adicionar na tabela em papel uma coluna para a aceitação dele.
    - Nesse caso, o instalador se compromete a passar os dados para a tabela digital ao fim da installfest, mas guardando também o papel (já que ele é a “via original” do termo nesse caso).
  - O preenchimento do formulário e concordância com o termo de consentimento é essencial para a instalação. A recusa do preenchimento deve implicar na recusa da instalação.


### Voluntários

{% include planilha-voluntarios.html data=site.data.installfest.if9-volunteers %}

### Pendrives

{% include planilha-pendrives.html data=site.data.installfest.if9-volunteers %}


## Distros

A distro principal a ser recomendada e instalada é o Linux Mint.
Disponibilizaremos, no mínimo, a versão com Cinnamon e Xfce. 
Dê preferência à instalação do Mint com btrfs (particionamento manual), e ative o TimeShift
(snapshots) para proteger contra quebras de sistema.  

Para usuários técnicos, "fuçadores" ou com casos de uso especiais fica a critério do voluntário
qual sugerir. É importante lembrar que iniciantes são prioridade no evento, mas é interessante levar
também opções de distro com KDE Plasma.

Lembre-se de instalar os drivers necessários, além de configurar um sistema
de snapshots (Snapper, TimeShift, etc) caso não venha por padrão. No Mint essas instalações
devem preferencialmente ser realizadas rapidamente por meio das interfaces gráficas inclusas
no sistema.
Recursos para o Fedora e openSUSE estão disponíveis na
[página de problemas do GELOS](https://gelos.club/pobremas), mas confira se eles estão atualizados.

Estamos disponibilizando todas ISOs para x86_64, bem como as
principais para aarch64 (UEFI Arm). Voluntários podem levar ISOs extras,
caso queiram.

{% include planilha-isos.html data=site.data.installfest.if9-isos %}

Lembre-se de ejetar o pendrive de forma
segura (rode o comando `sync .` ou ejete pela sua DE) e de conferir as checksums!

Dica: Para baixar todas as ISOs no seu diretório atual de forma conveniente, você pode usar o comando abaixo.
A lista de links e checksums é gerada automaticamente a partir da tabela.
O aria2 verifica o SHA256 de cada arquivo ao terminar o download, e `-c` permite
retomar downloads interrompidos. Com `--check-integrity=true`, arquivos já baixados
também são verificados e podem ser baixados novamente se estiverem corrompidos.

Com Nix:

```sh
curl -fsSL https://gelos.club/assets/installfest/if9-isos.txt | nix run nixpkgs#aria2 -- -UMozilla/5.0 -c --check-integrity=true -i -
```

Para conferir os checksums separadamente do aria2, use o `sha256sum` com
[nosso arquivo de checksums](/assets/installfest/if9-checksums.sha256).
Isso também serve para ISOs baixadas por outro programa ou para verificar a cópia no pendrive.

Entre no diretório com suas ISOs e rode:

```bash
sha256sum -c <(curl https://gelos.club/assets/installfest/if9-checksums.sha256)
```

O comando te avisará, para cada ISO, se o hash bate ou não. Pode
ser interessante rodar o comando no diretório da pendrive, após a escrita (ejeção/`sync`) ter terminado, para garantir que não tenha acontecido corrupção no processo.

## Organização

### Pré evento

- [x] Reservar espaço
- [x] Post de divulgação
    - [x] Conferir data pra postar (jekyll n posta post com data futura)
- [ ] Flyer
    - [x] Preparar
    - [ ] Imprimir
    - [ ] Colar
- [ ] Pegar posters CCEx
- [x] Fazer permalink /if9 para pag no blog
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
    - [ ] Outros grupos
- [ ] Divulgar nas redes sociais
    - [x] Fediverso
    - [ ] Instagram 🤢
    - [ ] Outras
- [ ] Divulgações Extras
    - [x] [EndOf10](https://endof10.org/events/)
    - [ ] Atualizar [mapeamento.softwarelivre.tec.br installfest](https://mapeamento.softwarelivre.tec.br/locais/gelos-linux-installfest/)
    - [ ] [movimento.softwarelivre.tec.br](https://movimento.softwarelivre.tec.br/eventos/)
- [x] ISOs
    - [x] Atualizar tabela com links e checksums atuais
    - [ ] Mirror das isos do openSUSE
    - [x] Criar arquivo com checksums
- [ ] Levantar pessoas
    - [ ] Preencher tabela de voluntários
    - [ ] Preencher tabela de pendrives
- [x] Formulário de instalação (cryptpad/nextcloud/similar)
- [ ] Coffee break
    - [ ] Vaquinha
    - [ ] Salgados
    - [ ] Bolos
    - [ ] Refrigerantes
    - [ ] Café

### Pós evento

- [ ] Levantar números (11 instalações: 5 Mint, 3 Fedora, 2 ubuntu, 1 outra)
- [ ] Postar fotos
- [ ] Devolver posters

## Data e Local

- 📅 Data: 26/10/2026
- 🕒 Horário: 14h~19h
- 📍 Local: Vão da Biblioteca (ICMC-USP)

Mapa:

<iframe height="350" src="https://www.openstreetmap.org/export/embed.html?bbox=-47.89704591035843%2C-22.00876558246043%2C-47.89270609617233%2C-22.006569767724148&amp;layer=mapnik&amp;marker=-22.007668922727124%2C-47.89487600326538" style="border: 1px solid black; width: 100%"></iframe><br/><small><a href="https://www.openstreetmap.org/?mlat=-22.007669&amp;mlon=-47.894876#map=19/-22.007668/-47.894876&amp;layers=N">Ver mapa ampliado</a></small>


## Flyer

![Flyer da installfest, uma imagem com fundo azul em degradê de claro esverdeado para escuro e o Tux, mascote do Linux, grande em branco semitransparente. O fundo é acompanhados de vários logos do GELOS imitando neve caindo. Na frente, em letras grandes está o título "Linux Installfest" seguido pelas informações sobre localização e data do evento, apresentadas também nesse site. Na direita estão os logos de diversas distros, um QR Code para essa página e o logo do GELOS, CCOS e ICMC.](/assets/static/installfest/GELOS-Installfest-2026-2.png)
