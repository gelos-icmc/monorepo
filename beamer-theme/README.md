# Tema beamer GELOS

## Preview

TODO

## Como usar

Basta copiar/linkar a .sty e as .png's para o diretório do seu projeto, configure sua apresentação para usar o tema "gelos", e é isso.

Por exemplo:

```
echo "# Olá mundo" > teste.md
pandoc -t beamer -V theme=gelos -V title=Oie teste.md -o teste.pdf
```

Ou use o sample que provemos:

```
pandoc -t beamer sample.md -o sample.pdf
```

### Com nix (via flakes)

```
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
    packages = eachSystem (system: {
      default = gelos-theme.packages.${system}.mkGelosSlides "exemplo" ./.;
    });
  };
}

```
