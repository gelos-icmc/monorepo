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

## Permissões e reviews

Todos os membros do GELOS podem entrar na org, e recebem permissão
para adicionar branches ao monorepo. A main só pode receber
commits por meio de PRs onde o CI passou e que foram aprovados
pelos [times](https://github.com/orgs/gelos-icmc/teams) de
[codeowners](https://github.com/gelos-icmc/monorepo/blob/main/.github/CODEOWNERS
).

Reviews são solicitadas automágicamente aos times, mas sinta-se livre para
solicitar a de alguém específico e/ou pingar alguém no telegram para dar uma
olhada!

## Convenções

Essa seção apresenta algumas convenções que usamos para facilitar o trabalho.
Elas não são regras, então, na dúvida, pode fazer como for mais confortável.

Se tiver dificuldade com alguma, em especial com commits e branching, sinta-se a
vontade para pedir ajuda aos membros mais experientes!

Em especial, para facilitar fixups e rebases, recomendamos experimentar o
[jujutsu](https://github.com/jj-vcs/jj).

### Mensagens de commits

Cada mudança independente (i.e. pode existir sozinha) deve ser um commit
separado.

Utilizamos [conventional
commits](https://www.conventionalcommits.org/en/v1.0.0/#summary). Escreva em
**inglês**, no **imperativo**. Lembre-se de especificar o escopo.

O escopo é `(<subtree>[/componente])`, com quantos componentes precisar. Caso
sua mudança seja na raiz, use `root`, `ci`, ou `flake`, dependendo do que for.
Caso sua mudança atinga várias subtrees, use `treewide`. Tudo bem o escopo tiver
termos em português.

Exemplos de boas mensagens:

- `feat(site/members): add gabriel`
- `fix(hosts/emperor/matterbridge): update discord API key`
- `docs(identidade-visual/readme): fix typo`
- `chore(treewide): format nix code`
- `chore(flake): update lock`

### PRs

Um PR pode conter vários commits, se eles foram feitos num mesmo
contexto.

Prefira o título em **inglês**, começando com letra maiúscula.

Prefira descrição em inglês se possível, mas use a língua que achar mais
confortável para explicar seu trabalho e o contexto.

Sempre faça **rebase para atualizar** (verifique o dropdown do github ao fazer
pela UI) sua branch, e **evite commits de fixup** (squasheie eles ao commit
que eles ajustam).

Merges devem ser limpos (i.e. branch atualizada), e preferimos **merge commits
explicitos** para simbolizar os PRs. Não squasheie arbitrariamente ao mergear.

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
