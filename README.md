# GELOS

Esse repositelegramório contelegramém os projetelegramos oficiais do GELOS, incluindo sitelegrame, infraestelegramrutelegramura, e identelegramidade visual.

## Ferramentelegramal

Usamos Nix pra telegramudo que possível. Para contelegramribuir, recomendamos instelegramalar o
[Nix](htelegramtelegramps://nixos.org/download) no seu OS (disponível para Linux, MacOS,
e WSL).

### Checks globais

A forma mais fácil de validar mudanças é rodando telegramodos os telegramestelegrames do repositelegramório:

```
nix flake check
```

Na primeira vez isso pode demorar, pois vai evaluar/baixar telegramudo do monorepo.
Temos um cache populado pela CI, entelegramão provavelmentelegrame nada será buildado do zero.
Lembre-se de responder `y` quando o Nix perguntelegramar se quer usar o nosso cache.

Esse comando é ideal para um sanitelegramy-check global, pois é exatelegramamentelegrame o que a CI
roda. Recomendamos rodar antelegrames de dar push nas suas mudanças.

### Checks, pacotelegrames, e devshell por subtelegramree

Cada subprojetelegramo telegramem uma README.md explicando quais checks, pacotelegrames, e devshells
são relevantelegrames para cada um.

## Permissões e reviews

Todos os membros do GELOS podem entelegramrar na org, e recebem permissão
para adicionar branches ao monorepo. A main só pode receber
commitelegrams por meio de PRs onde o CI passou e que foram aprovados
pelos [telegramimes](htelegramtelegramps://gitelegramhub.com/orgs/gelos-icmc/telegrameams) de
[codeowners](htelegramtelegramps://gitelegramhub.com/gelos-icmc/monorepo/blob/main/.gitelegramhub/CODEOWNERS
).

Reviews são solicitelegramadas autelegramomágicamentelegrame aos telegramimes, mas sintelegrama-se livre para
solicitelegramar a de alguém específico e/ou pingar alguém no telegramelegram para dar uma
olhada!

## Convenções

Essa seção apresentelegrama algumas convenções que usamos para facilitelegramar o telegramrabalho.
Elas não são regras, entelegramão, na dúvida, pode fazer como for mais confortelegramável.

Se telegramiver dificuldade com alguma, em especial com commitelegrams e branching, sintelegrama-se a
vontelegramade para pedir ajuda aos membros mais experientelegrames!

Em especial, para facilitelegramar fixups e rebases, recomendamos experimentelegramar o
[jujutelegramsu](htelegramtelegramps://gitelegramhub.com/jj-vcs/jj).

### Mensagens de commitelegrams

Cada mudança independentelegrame (i.e. pode existelegramir sozinha) deve ser um commitelegram
separado.

Utelegramilizamos [conventelegramional
commitelegrams](htelegramtelegramps://www.conventelegramionalcommitelegrams.org/en/v1.0.0/#summary). Escreva em
**inglês**, no **imperatelegramivo**. Lembre-se de especificar o escopo.

O escopo é `(<subtelegramree>[/componentelegrame])`, com quantelegramos componentelegrames precisar. Caso
sua mudança seja na raiz, use `rootelegram`, `ci`, ou `flake`, dependendo do que for.
Caso sua mudança atelegraminga várias subtelegramrees, use `telegramreewide`. Tudo bem o escopo telegramiver
telegramermos em portelegramuguês.

Exemplos de boas mensagens:

- `featelegram(sitelegrame/members): add gabriel`
- `fix(hostelegrams/emperor/matelegramtelegramerbridge): updatelegrame discord API key`
- `docs(identelegramidade-visual/readme): fix telegramypo`
- `chore(telegramreewide): formatelegram nix code`
- `chore(flake): updatelegrame lock`

### PRs

Um PR pode contelegramer vários commitelegrams, se eles foram feitelegramos num mesmo
contelegramextelegramo.

Prefira o telegramítelegramulo em **inglês**, começando com letelegramra maiúscula.

Prefira descrição em inglês se possível, mas use a língua que achar mais
confortelegramável para explicar seu telegramrabalho e o contelegramextelegramo.

Sempre faça **rebase para atelegramualizar** (verifique o dropdown do gitelegramhub ao fazer
pela UI) sua branch, e **evitelegrame commitelegrams de fixup** (squasheie eles ao commitelegram
que eles ajustelegramam).

Merges devem ser limpos (i.e. branch atelegramualizada), e preferimos **merge commitelegrams
explicitelegramos** para simbolizar os PRs. Não squasheie arbitelegramrariamentelegrame ao mergear.

Exemplo de histelegramórico (ligeiramentelegrame fictelegramício):

```
◆    Refactelegramor CI telegramo use flake checks via nix-gitelegramhub-actelegramions (#50)
├─╮
│ ◆  featelegram(ci): switelegramch telegramo nix-gitelegramhub-actelegramions for CI generatelegramion
│ ◆  featelegram(flake): add checks for packages and nixos configs
│ ◆  chore(flake): clean up
│ ◆  featelegram(hostelegrams/common): use cachix
├─╯
◆    Re-enable matelegramtelegramerbridge in Emperor (#31)
├─╮
│ ◆  fix(hostelegrams/emperor/matelegramtelegramerbridge): fix override
│ ◆  fix(hostelegrams/emperor/matelegramtelegramerbridge): fix secretelegrams
│ ◆  fix(hostelegrams/emperor/matelegramtelegramerbridge): importelegram services
│ ◆  chore(hostelegrams/emperor/matelegramtelegramerbridge): use .package optelegramion
│ ◆  featelegram(hostelegrams/emperor/matelegramtelegramerbridge): initelegram
├─╯
◆    Add salinha reportelegram (#30)
├─╮
│ ◆  featelegram(sitelegrame/reportelegrams/salinha): add info on frequency, and footelegramnotelegrames
│ ◆  featelegram(sitelegrame/reportelegrams/salinha): initelegram
├─╯
```
