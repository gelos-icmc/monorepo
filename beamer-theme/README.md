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
