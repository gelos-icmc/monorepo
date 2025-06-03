# Identidade Visual - GELOS

> Subtree contendo arquivos de identidade visual do GELOS.

Cada pasta contém arquivos de identidade visual do GELOS em diferentes cores, todas em formato SVG. Você pode acessar versões em PNG buildadas no nosso site: https://gelos.club/identidade/

## Guia de uso

### Tipos de logo

Logo principal (horizontal), use na maioria dos casos:

![Logo principal](src/horizontal/gelos-fullname-blue.svg)

Ícone (sem texto), use quando o nome do grupo já está presente em outro lugar do material:

![Icone](src/icon/snowflake-blue.svg)

Logo simplificado (vertical, sem subtítulo), use quando o subtítulo ficar ruim para ler:

![Logo simplificado](src/vertical/gelos-snowflake-blue.svg)

### Cores

As cores utilizadas pelo GELOS são:

- **Azul escuro**, para fundos claros: Gradiente em azul entre `#20ABCF` e `#4035E6`
- **Azul claro:**, para fundos escuros: Gradiente em azul claro entre `#2BD7FF` e `#737DFF`
- **Branco** ou **Preto**, para fundos coloridos: `#FFF` ou `#000`

## Estrutura

A estrutura desse repositório pastas é a seguinte:

- `src/icon` - Ícone padrão do GELOS contendo um floco de neve
- `src/horizontal` - Logo horizontal do GELOS contendo o nome "GELOS" e logo em seguida como subtítulo o nome em extenso do grupo
- `src/vertical` - Logo vertical do GELOS contendo um floco de neve seguido pelo nome "GELOS" na vertical

## Desenvolvendo

A única coisa buildada aqui são as PNGs e esse site estático com as listagens. Para validar use:

```
nix build .#identidade-visual  
```

E abra a `result/index.html` no seu navegador preferido, por exemplo:

```
xdg-open result/index.html
```
