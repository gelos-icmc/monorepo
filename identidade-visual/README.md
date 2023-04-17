# Identidade Visual - GELOS

> Repositório contendo arquivos de identidade visual do GELOS.

## Estrutura de pastas e arquivos

Cada pasta contém arquivos de identidade visual do GELOS em diferentes cores, todas em formato SVG.

A estrutura de pastas é a seguinte:

```text
├── identidade-visual
│   ├── src
│   │   ├── horizontal
│   │   │   ├── gelos-fullname-black.svg
│   │   │   ├── gelos-fullname-blue.svg
│   │   │   ├── gelos-fullname-lightblue.svg
│   │   │   ├── gelos-fullname-white.svg
│   │   ├── icon
│   │   │   ├── snowflake-black.svg
│   │   │   ├── snowflake-blue.svg
│   │   │   ├── snowflake-lightblue.svg
│   │   │   ├── snowflake-white.svg
│   │   ├── vertical
│   │   │   ├── gelos-snowflake-black.svg
│   │   │   ├── gelos-snowflake-blue.svg
│   │   │   ├── gelos-snowflake-lightblue.svg
│   │   │   ├── gelos-snowflake-white.svg
```

`src/icon` - Ícone padrão do GELOS contendo um floco de neve

`src/horizontal` - Logo horizontal do GELOS contendo o nome "GELOS" e logo em seguida como subtítulo o nome em extenso do grupo

`src/vertical` - Logo vertical do GELOS contendo um floco de neve seguido pelo nome "GELOS" na vertical

A seguir alguns modelos exemplos com a cor padrão do GELOS (Azul):

<style>
.container {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}
.icon {
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>

<div class="container">
  <div class="icon">

  <p>Ícone padrão</p>
  <img src="src/icon/snowflake-blue.svg"/>

  </div>

  <div class="icon">
  
  <p>Logo horizontal</p>
  <img src="src/horizontal/gelos-fullname-blue.svg"/>

  </div>

  <div class="icon">

  <p>Logo vertical</p>
  <img src="src/vertical/gelos-snowflake-blue.svg"/>

  </div>
</div>

## Cores

As cores utilizadas no GELOS são:

- **Branco:** `#FFFFFF`
- **Preto:** `#000000`
- **Azul:** Gradiente em azul entre `#20ABCF` e `#4035E6`
- **Azul claro:** Gradiente em azul claro entre `#2BD7FF` e `#737DFF`
