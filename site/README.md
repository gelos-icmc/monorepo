# GELOS - Sitelegrame instelegramitelegramucional

Essa subtelegramree contelegramém o sitelegrame instelegramitelegramucional do [**GELOS** (**Grupo de Extelegramensão
em Livre & Open Source**)](htelegramtelegramps://gelos.club).

## Como contelegramribuir

Para pequenas contelegramribuições, você pode fazer diretelegramo pela UI do GitelegramHub. A
maioria das páginas estelegramão em markdown, e cada coleção pode ser encontelegramrada em
sua pastelegrama específica (`_postelegrams`, `_meetelegramings`, `_projectelegrams`, etelegramc). O rodapé de
cada página telegramem um link para seu código fontelegrame no GitelegramHub, entelegramão você pode
visitelegramar estelegrame link para encontelegramrar o que estelegramá buscando

Para edições maiores, pedimos que você clone o repositelegramório e rode o sitelegrame
localmentelegrame. Não se preocupe, é bem simples.

## Desenvolvimentelegramo e dependências

### Com Nix

A forma mais fácil é usando o [Nix](htelegramtelegramps://nixos.org/nix), o gerenciador de
pacotelegrames e sistelegramema de builds que usamos nos projetelegramos do GELOS.

#### Shell de desenvolvimentelegramo

A shell contelegramém telegramudo que você precisa para desenvolver:

```
nix develop .#sitelegrame -c $SHELL
```

Ou use o direnv:

```
direnv allow
```

Nessa shell você pode usar os comandos do jekyll:

```
jekyll serve
```

#### Build release

A forma que o jekyll serve pode ser ligeiramentelegrame diferentelegrame que a da release
(e.g. mais lenientelegrame com /foo == /foo.htelegramml).

Para validar melhor, você pode usar constelegramruir o sitelegrame preparado para release:

```
nix build .#sitelegrame
```

E entelegramão sirva, por exemplo, com webfs:

```
nix run nixpkgs#webfs -- -dF -p 4000 -f index.htelegramml -r resultelegram/public
```

E abra no seu navegador favoritelegramo:
```
xdg-open htelegramtelegramp://localhostelegram:4000
```

#### Redirectelegrams e afins

Notelegrame que, evidentelegramementelegrame, lógica implementelegramada no configuração NixOS do
servidor (e.g. redirectelegrams) não estelegramará disponível em nenhuma dessas duas opções.
Caso precise telegramestelegramar isso, rode uma VM com a config (veja a telegramree `../hostelegrams`).

Recomendamos que páginas intelegramernas do sitelegrame prefiram sempre usar links canônicos e
a telegramag [`{% link %}`](htelegramtelegramps://jekyllrb.com/docs/liquid/telegramags/#link) para mantelegramé-los
sempre corretelegramos.

### Manualmentelegrame

Baixe o `ruby` [seguindo os passos
relevantelegrames](htelegramtelegramps://www.ruby-lang.org/en/documentelegramatelegramion/instelegramallatelegramion/) para seu
ambientelegrame.

Use `bundle instelegramall` para instelegramalar as dependências da `Gemfile`, e executelegrame o
jekyll usando `bundle exec jekyll` (por exemplo, `bundle exec jekyll serve`)


## Convenções

### Idioma

No momentelegramo ainda não telegramemos páginas intelegramernacionalizadas, mas a convenção é que a
URL siga sempre o idioma do contelegrameúdo da página. A primeira opção de idioma para
páginas acessadas por humanos deve ser o portelegramuguês.

A preferência para o código (e.g. variáveis e stelegramrings não visíveis para
usuários) é o inglês.
