# GELOS - Site institucional

Essa subtree contém o site institucional do [**GELOS** (**Grupo de Extensão
em Livre & Open Source**)](https://gelos.club).

## Como contribuir

Para pequenas contribuições, você pode fazer direto pela UI do GitHub. A
maioria das páginas estão em markdown, e cada coleção pode ser encontrada em
sua pasta específica (`_posts`, `_meetings`, `_projects`, etc). O rodapé de
cada página tem um link para seu código fonte no GitHub, então você pode
visitar este link para encontrar o que está buscando

Para edições maiores, pedimos que você clone o repositório e rode o site
localmente. Não se preocupe, é bem simples.

## Desenvolvimento e dependências

### Com Nix

A forma mais fácil é usando o [Nix](https://nixos.org/nix), o gerenciador de
pacotes e sistema de builds que usamos nos projetos do GELOS.

#### Shell de desenvolvimento

A shell contém tudo que você precisa para desenvolver:

```
nix develop .#site -c $SHELL
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

A forma que o jekyll serve pode ser ligeiramente diferente que a da release
(e.g. mais leniente com /foo == /foo.html).

Para validar melhor, você pode usar construir o site preparado para release:

```
nix build .#site
```

E então sirva, por exemplo, com webfs:

```
nix run nixpkgs#webfs -- -dF -p 4000 -f index.html -r result/public
```

E abra no seu navegador favorito:
```
xdg-open http://localhost:4000
```

#### Redirects e afins

Note que, evidentemente, lógica implementada no configuração NixOS do
servidor (e.g. redirects) não estará disponível em nenhuma dessas duas opções.
Caso precise testar isso, rode uma VM com a config (veja a tree `../hosts`).

Recomendamos que páginas internas do site prefiram sempre usar links canônicos e
a tag [`{% link %}`](https://jekyllrb.com/docs/liquid/tags/#link) para manté-los
sempre corretos.

### Manualmente

Baixe o `ruby` [seguindo os passos
relevantes](https://www.ruby-lang.org/en/documentation/installation/) para seu
ambiente.

Use `bundle install` para instalar as dependências da `Gemfile`, e execute o
jekyll usando `bundle exec jekyll` (por exemplo, `bundle exec jekyll serve`)


## Convenções

No momento ainda não temos páginas internacionalizadas, mas a convenção é que a
URL siga sempre o idioma do conteúdo da página. A primeira opção de idioma para
páginas acessadas por humanos deve ser o português.
