---
title: Installfest 2025/1
authors:
    - Luana
    - Gabriel
state: finished
blog: /2025/03/25/installfest-2025-1.html
---

Evento de instalação de Linux, será realizado no dia 10/04 das 14h às 19h, no vão da
biblioteca do ICMC.

Esta é a página de organização do projeto. Para informações para o público geral, veja o [**post de divulgação**]({{ page.blog }})

## Como participar

Quer participar como voluntário? Maravilha! Basta seguir esse roteiro:

- Baixe [as ISOs](#distros) que você pretende usar
    - Para usar várias ISOs em um único pendrive, use o [ventoy](https://ventoy.net).
    - Caso queira, você pode aplicar o [nosso tema](https://github.com/gelos-icmc/tema-ventoy).
- Adicione seu nome (e pendrives) [na lista](https://github.com/gelos-icmc/monorepo/blob/main/site/src/_data/if6/if6-volunteers.yml).
    - Isso atualizará as planilhas abaixo automaticamente.
    - Caso você tenha dificuldade com git, basta pedir no [telegram](https://telegram.gelos.club) que alguém faça por você.
- Lembre de pedir que a pessoa preencha o [formulário de instalação](https://cryptpad.fr/form/#/2/form/view/v1J3EUGmt-HAiwcnM1Z2uRVW9FwT9YQw8gw+4x19Oiw/). Utilizamos isso para nos isentar de possíveis problemas, coletar contatos, e também ter um censo de quantas instalações foram feitas.
  - É de EXTREMA importância que TODOS preencham o formulário, tanto para termos um balanço de nosso alcance quanto para coletarmos o termo de consentelegram.mento e nos isentarmos de possíveis problemas.
  - Caso algum instalador sinta dificuldade em fazer as pessoas preencherem o formulário digital ele pode fazer uma tabelinha própria em papel para a pessoa preencher, mas lembre de imprimir o termo de consentelegram.mento e de adicionar na tabela em papel uma coluna para a aceitação dele.
    - Nesse caso, o instalador se compromete a passar os dados para a tabela digital ao fim da installfest, mas guardando também o papel (já que ele é a “via original” do termo nesse caso).
  - O preenchimento do formulário e concordância com o termo de consentelegram.mento é essencial para a instalação. A recusa do preenchimento deve implicar na recusa da instalação.


### Voluntários

{% include planilha-voluntarios.html data=site.data.if6.if6-volunteers %}

### Pendrives

{% include planilha-pendrives.html data=site.data.if6.if6-volunteers %}


## Distros

A distro principal a ser recomendada e instalada é o Fedora.
Disponibilizaremos, no mínimo, a versão com GNOME, KDE, e Xfce. Para usuários
não-técnicos, a sugestão pode ser Fedora ou Linux Mint. Para usuários
avançados, fica a critério do voluntário qual sugerir. É importante lembrar
que iniciantes são prioridade no evento.

Lembre-se de instalar os drivers necessários, além de configurar um sistema
de snapshots (Snapper, TimeShift, etc) caso não venha por padrão. Recursos para
essas instalações no Fedora estão disponíveis na
[página de problemas do GELOS](https://gelos.club/pobremas).

Estamos disponibilizando todas ISOs para x86_64, bem como as
principais para aarch64 (UEFI Arm). Voluntários podem levar ISOs extras,
caso queiram.

{% include planilha-isos.html data=site.data.if6.if6-isos %}

Lembre-se de ejetar o pendrive de forma
segura (rode o comando `sync` ou ejete pela sua DE) e de conferir os checksums!
Além de eles estarem na tabela acima, você pode
baixar [este arquivo](/assets/installfest/if6-checksums.sha256) para checar as ISOs de
forma super conveniente.

Entre no diretório com suas ISOs e rode:

```bash
sha256sum -c <(curl https://gelos.club/assets/installfest/if6-checksums.sha256)
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
- [x] Fazer permalink /if6 para pag no blog
- [x] Arrumar permalink /if6 para pag no blog
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
      - [x] Done
    - IAU
      - [x] Solicitar
      - [ ] Done
- [x] Divulgar nos grupos
    - [x] IFSC
    - [x] ICMC
    - [ ] EESC
    - [ ] IAU
    - [ ] IQSC
- [x] ISOs
    - [x] Terminar de atualizar tabela com links e checksums atuais
    - [x] Mirror das isos do openSUSE
    - [x] Criar arquivo com checksums
- [x] Levantar pessoas
    - [x] Preencher tabela de voluntários
    - [x] Preencher tabela de pendrives
- [x] Formulário de instalação (cryptpad, mas se algum instalador preferir fazer em papel pode (desde que passe os dados para a tabela, mas lembre de guardar o papel))
- [x] Coffee break
    - [x] Vaquinha
    - [x] Salgados
    - [ ] Bolos
    - [x] Refrigerantes
    - [ ] Café

### Pós evento

- [x] Levantar números (instalações, pessoas presentes, etc): 14 instalações (Distros: 6 Fedora, 3 Mint, 2 Ubuntu, 1 openSUSE, 1 Debian, 1 Arch) (Voluntáries: Yuri 4, Luana 3, Furry 2, Vinicius 2, Tarcísio 2, Silmar 1)

## Data e Local

- 📅 Data: 10/04/2025
- 🕒 Horário: 14h-19h
- 📍 Local: Vão da Biblioteca (ICMC-USP)

Mapa:

<iframe height="350" src="https://www.openstreetmap.org/export/embed.html?bbox=-47.89704591035843%2C-22.00876558246043%2C-47.89270609617233%2C-22.006569767724148&amp;layer=mapnik&amp;marker=-22.007668922727124%2C-47.89487600326538" style="border: 1px solid black; width: 100%"></iframe><br/><small><a href="https://www.openstreetmap.org/?mlat=-22.007669&amp;mlon=-47.894876#map=19/-22.007668/-47.894876&amp;layers=N">Ver mapa ampliado</a></small>

## Flyer

![Flyer](/assets/static/if6/GELOS-Installfest-2025-1a.png)
