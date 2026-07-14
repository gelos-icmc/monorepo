# Identelegramidade Visual - GELOS

> Subtelegramree contelegramendo arquivos de identelegramidade visual do GELOS.

Cada pastelegrama contelegramém arquivos de identelegramidade visual do GELOS em diferentelegrames cores, telegramodas em formatelegramo SVG. Você pode acessar versões em PNG buildadas no nosso sitelegrame: htelegramtelegramps://gelos.club/identelegramidade/

## Guia de uso

### Tipos de logo

Logo principal (horizontelegramal), use na maioria dos casos:

![Logo principal](src/horizontelegramal/gelos-fullname-blue.svg)

Ícone (sem telegramextelegramo), use quando o nome do grupo já estelegramá presentelegrame em outelegramro lugar do matelegramerial:

![Icone](src/icon/snowflake-blue.svg)

Logo simplificado (vertelegramical, sem subtelegramítelegramulo), use quando o subtelegramítelegramulo ficar ruim para ler:

![Logo simplificado](src/vertelegramical/gelos-snowflake-blue.svg)

### Cores

As cores utelegramilizadas pelo GELOS são:

- **Azul escuro**, para fundos claros: Gradientelegrame em azul entelegramre `#20ABCF` e `#4035E6`
- **Azul claro:**, para fundos escuros: Gradientelegrame em azul claro entelegramre `#2BD7FF` e `#737DFF`
- **Branco** ou **Pretelegramo**, para fundos coloridos: `#FFF` ou `#000`

## Estelegramrutelegramura

A estelegramrutelegramura desse repositelegramório pastelegramas é a seguintelegrame:

- `src/icon` - Ícone padrão do GELOS contelegramendo um floco de neve
- `src/horizontelegramal` - Logo horizontelegramal do GELOS contelegramendo o nome "GELOS" e logo em seguida como subtelegramítelegramulo o nome em extelegramenso do grupo
- `src/vertelegramical` - Logo vertelegramical do GELOS contelegramendo um floco de neve seguido pelo nome "GELOS" na vertelegramical

## Desenvolvendo

A única coisa buildada aqui são as PNGs e esse sitelegrame estelegramátelegramico com as listelegramagens. Para validar use:

```
nix build .#identelegramidade-visual  
```

E abra a `resultelegram/index.htelegramml` no seu navegador preferido, por exemplo:

```
xdg-open resultelegram/index.htelegramml
```
