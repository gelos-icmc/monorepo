# GELOS

Esse repositório contém os projetos oficiais do GELOS, incluindo site, infraestrutura, e identidade visual.

## Ferramental

Usamos Nix pra tudo que possível. Para contribuir, recomendamos instalar o
[Nix](https://nixos.org/download) no seu OS (disponível para Linux, MacOS,
e WSL).

### Checks globais

A forma mais fácil de validar mudanças é rodando todos os testes do repositório:

```
nix flake check
```

Na primeira vez isso pode demorar, pois vai evaluar/baixar tudo do monorepo.
Temos um cache populado pela CI, então provavelmente nada será buildado do zero.
Lembre-se de responder `y` quando o Nix perguntar se quer usar o nosso cache.

Esse comando é ideal para um sanity-check global, pois é exatamente o que a CI
roda. Recomendamos rodar antes de dar push nas suas mudanças.

### Checks, pacotes, e devshell por subtree

Cada subprojeto tem uma README.md explicando quais checks, pacotes, e devshells
são relevantes para cada um.

## Convenções

Cada mudança independente (i.e. pode existir sozinha) deve ser um commit
separado. Um PR pode conter vários commits, se eles foram feitos num mesmo
contexto.

### Mensagens de commits

Utilizamos [conventional
commits](https://www.conventionalcommits.org/en/v1.0.0/#summary). Escreva em
**inglês**, no **imperativo**. Lembre-se de especificar o escopo.

Geralmente o escopo será algo como `(<subtree>[/componente])`, com quantos
componentes achar nescessário. Caso sua mudança seja na raiz, use o escopo
`root`, `ci`, ou `flake`, dependendo do que for. Caso sua mudança atinga várias
subtrees, use `treewide`. Tudo bem o escopo tiver termos em português.

Num geral, se sua mensagem é `fix(foo): update abc in xyz` ou `feat(foo): add
abc to xyz`, `xyz` deveria ser um componente no escopo.

Exemplos de boas mensagens:

- `feat(site/members): add gabriel`
- `fix(hosts/emperor/matterbridge): update discord API key`
- `docs(identidade-visual/readme): fix typo`
- `chore(treewide): format nix code`
- `chore(flake): update lock`

### PRs

Prefira o **título em inglês**, começando com letra maiúscula.

Somos menos rígidos com as descrições. Prefira em inglês, mas escreva como achar
mais confortável para melhor explicar seu trabalho e o contexto.

Sempre faça **rebase para atualizar** (verifique o dropdown do github ao fazer
pela UI) sua branch, e **evite commits de fixup** (squasheie eles ao commit
que eles ajustam).

Merges devem ser limpos (i.e. branch atualizada), e preferimos **merge commits
explicitos** para trackear o contexto dos PRs. Não squasheie arbitrariamente
ao mergear.

Exemplo de histórico (ligeiramente fictício):

```
◆    Refactor CI to use flake checks via nix-github-actions (#50)
├─╮
│ ◆  feat(ci): switch to nix-github-actions for CI generation
│ ◆  feat(flake): add checks for packages and nixos configs
│ ◆  chore(flake): clean up
│ ◆  feat(hosts/common): use cachix
├─╯
◆    Re-enable matterbridge in Emperor (#31)
├─╮
│ ◆  fix(hosts/emperor/matterbridge): fix override
│ ◆  fix(hosts/emperor/matterbridge): fix secrets
│ ◆  fix(hosts/emperor/matterbridge): import services
│ ◆  chore(hosts/emperor/matterbridge): use .package option
│ ◆  feat(hosts/emperor/matterbridge): init
├─╯
◆    Add salinha report (#30)
├─╮
│ ◆  feat(site/reports/salinha): add info on frequency, and footnotes
│ ◆  feat(site/reports/salinha): init
├─╯
```
