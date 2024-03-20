# Tema beamer GELOS

## Preview

[sample.pdf](https://github.com/gelos-icmc/beamer-theme/files/13964340/sample.pdf)

## Como usar

Além de alguns pacotes tex e pandoc, você precisa ter esse tema disponível para
o seu projeto usar ele. Há algumas formas de fazer:
- Copiando o .sty e as .png's pro mesmo diretório dos seus .md's
- Clonando esse repo em qualquer lugar (e.g. dentro do seu projeto) e setando `$TEXINPUTS`
- Clonando esse repo em `~/texmf/tex/latex/gelosbeamer`

Por exemplo:

```
mkdir -p ~/texmf/tex/latex
git clone https://github.com/gelos-icmc/beamer-theme ~/texmf/tex/latex/gelosbeamer

echo "# Olá mundo" > teste.md
pandoc -t beamer -V theme=gelos -V title=Oie teste.md -o teste.pdf
```

## Com nix

Esse flake provê:
- `packages.theme`: apenas o pacote tex do tema
- `packages.texlive-env`: um ambiente texlive contendo o tema e suas dependencias
- `packages.mkGelosSlides`: uma função de conveniência para empacotar slides, usando o `texlive-env` + `pandoc`
- `packages.sample`: slides exemplo, empacotado com `mkGelosSlides`
- `devShells.default`: dev shell contendo o `texlive-env` + `pandoc`

### Usando a `devShell`

Uma forma simples de ter uma shell com pandoc, texlive, e nosso tema nix develop:

```
nix develop github:gelos-icmc/beamer-theme -c $SHELL
echo "# Olá mundo" > teste.md
pandoc -t beamer -V theme=gelos -V title=Oie teste.md -o teste.pdf
```

### Empacotando com `mkGelosSlides`

Exemplo de flake usando a função `mkGelosSlides`:
```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    systems.url = "github:nix-systems/default";

    gelos-theme.url = "github:gelos-icmc/beamer-theme";
    gelos-theme.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { systems, nixpkgs, gelos-theme, ...}: let
    eachSystem = nixpkgs.lib.genAttrs (import systems);
  in {
    packages = eachSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      theme-pkgs = gelos-theme.packages.${system};
    in {
      default = theme-pkgs.mkGelosSlides {
        # Diretório com seus .md's (obrigatório)
        src = ./.;

        # Será usado para o nome do pdf final
        # pname = "slides";
        # Permite ignorar alguns arquivos que você não quer nos slides
        # ignore = [ "README.md" ];
        # Você pode também personalizar qual ambiente texlive usar
        # texlive = theme-pkgs.texlive-env;
        # texlive = pkgs.texlive.withPackages (ps: [ps.scheme-medium ps.foo ps.bar theme-pkgs.theme]);
      };
    });
  };
}

```

Daí é só partir pro abraço:
```bash
nix build
```

Ao empacotar seus slides, você ganha de brinde uma nix shell onde pode usar o
`pandoc` sem se preocupar com dependencias:
```bash
nix develop
pandoc -t beamer exemplo.md -o exemplo.pdf
```
