---
title: "Fediverso: As Redes Sociais Descentralizadas e Federadas"
authors:
    - Luana
lang: pt-BR
---

Conheça e aprenda a usar o Mastodon e outras redes do Fediverso.

<blockquote>
  <p><strong>Índice:</strong></p>

<ol id="markdown-toc">
  <li><a href="#o-que-é-o-fediverso" id="markdown-toc-o-que-é-o-fediverso">O que é o Fediverso?</a></li>
  <li><a href="#por-que-descentralização-é-importante" id="markdown-toc-por-que-descentralização-é-importante">Por que descentralização é importante?</a></li>
  <li><a href="#mastodon" id="markdown-toc-mastodon">Mastodon</a></li>
  <li><a href="#gostei-que-instância-devo-escolher" id="markdown-toc-gostei-que-instância-devo-escolher">Gostei! Que instância devo escolher?</a></li>
  <li><a href="#e-depois-como-encontro-gente-para-seguir" id="markdown-toc-e-depois-como-encontro-gente-para-seguir">E depois? Como encontro gente para seguir?</a></li>
  <li><a href="#como-faço-para-seguir-o-gelos" id="markdown-toc-como-faço-para-seguir-o-gelos">Como faço para seguir o GELOS?</a></li>
  <li><a href="#é-isso-dúvidas" id="markdown-toc-é-isso-dúvidas">É isso! Dúvidas?</a></li>
  <li><a href="#quero-me-aprofundar-mais" id="markdown-toc-quero-me-aprofundar-mais">Quero me aprofundar mais</a>    <ol>
      <li><a href="#quais-são-os-outros-tipos-de-redes-sociais-no-fediverso" id="markdown-toc-quais-são-os-outros-tipos-de-redes-sociais-no-fediverso">Quais são os outros tipos de redes sociais no Fediverso?</a>        <ol>
          <li><a href="#sharkey" id="markdown-toc-sharkey">Sharkey</a></li>
          <li><a href="#mbin" id="markdown-toc-mbin">Mbin</a></li>
          <li><a href="#pixelfed" id="markdown-toc-pixelfed">Pixelfed</a></li>
          <li><a href="#loops" id="markdown-toc-loops">Loops</a></li>
          <li><a href="#peertube" id="markdown-toc-peertube">PeerTube</a></li>
        </ol>
      </li>
      <li><a href="#o-que-é-desfederação" id="markdown-toc-o-que-é-desfederação">O que é desfederação?</a></li>
      <li><a href="#mas-e-o-self-hosting" id="markdown-toc-mas-e-o-self-hosting">Mas e o self-hosting?</a></li>
      <li><a href="#quero-aprender-como-o-activitypub-funciona-e-como-ter-minha-própria-instância" id="markdown-toc-quero-aprender-como-o-activitypub-funciona-e-como-ter-minha-própria-instância">Quero aprender como o ActivityPub funciona e como ter minha própria instância</a></li>
    </ol>
  </li>
  <li><a href="#feedback" id="markdown-toc-feedback">Feedback</a></li>
</ol>

</blockquote>

## O que é o Fediverso?

O Fediverso é uma rede de redes sociais descentralizadas, 
federadas e em sua maioria open source, como o Mastodon.  
Uma rede criada pela comunidade para a comunidade,
sem fins lucrativos, possibilitando um ambiente acolhedor
que recupera as intenções de distribuição iniciais da Internet.

Cada username do Fediverso é composto de duas partes, o nome e 
a instância. Por exemplo, o usuário [@GELOS@floss.social](https://floss.social/@GELOS) se refere
à conta GELOS na instância floss.social.

Mas veja só: apesar de existirem várias instâncias ou servidores de
Mastodon e de outros softwares do Fediverso, você precisa ter
conta apenas em uma! A partir da sua conta, você pode interagir
com pessoas de qualquer outra instância.  
É que nem o e-mail: você pode ter um @gmail e conversar
normalmente com alguém que tem um @hotmail, por exemplo!

O Mastodon é uma das redes sociais de microblogging (como o Twitter) 
que fazem parte do Fediverso, mas também existem outros tipos de
redes sociais no fedi, como Sharkey, Mbin, Pixelfed e PeerTube.

Nessa página, que tentamos manter sempre atualizada, mostraremos de forma simples
várias opções presentes no Fedi para você entender qual é melhor para você,
além de mostrar algumas sugestões de instâncias. Daremos uma atenção pessoal às instâncias
de Mastodon, por serem as mais comuns e amplamente utilizadas, mas ao final da página também
mencionamos outras opções.  
Não é o foco dessa página ensinar o funcionamento técnico da rede ou ensinar o
self-hosting, mas planejamos fazer uma página separada com esses detalhes no
futuro.

Fique à vontade para tirar dúvidas ou pedir ajuda sobre Mastodon, 
Fediverso e outros softwares livres em nosso grupo no [Telegram](https://telegram.gelos.club/) ou
em nossos [Plantões de Dúvidas](/projetos/plantao.html)!  
O site [fedi.tips](https://fedi.tips) também pode ajudar.

## Por que descentralização é importante?

A descentralização é um pilar fundamental do fediverso, 
proporcionando mais segurança e liberdade para os usuários.

Nas plataformas do fediverso:

- As comunidades são responsáveis por suas instâncias, não grandes corporações que priorizam anúncios e lucro sobre a segurança de seus usuários. 
- As instâncias são independentes, portanto a rede não pode ser comprada como acontece com outras redes sociais.
- Por serem majoritariamente geridas por voluntários da comunidade, as instâncias não vendem os dados de seus usuários e não possuem anúncios.
- A rede é um ambiente acolhedor e de proximidade, recuperando os ideais do início da Internet, em que todos podem conviver e ter seus próprios lugares longe do controle das grandes empresas.
- Instâncias com discurso de ódio são rapidamente desfederadas, protegendo a cultura inclusiva e diversa.

Esses pontos são essenciais para a segurança da
comunidade LGBT+, visto que diversas plataformas centralizadas 
frequentemente negligenciam sua segurança e ativamente permitem 
posts LGBT-fóbicos em nome do lucro e engajamento.

## Mastodon

O mais comum, o [Mastodon](https://joinmastodon.org/pt-BR) é uma ótima opção para quem gosta de microblogging e quer substituir
o Twitter ou similares. Existem forks do Mastodon, como o [glitch-soc](https://glitch-soc.github.io/docs/) e o [Chuckya](https://github.com/TheEssem/mastodon?tab=readme-ov-file#-chuckya), que
adicionam mais features, como a possibilidade de formatar toots com markdown, reagir a
toots com emojis (incluindo emojis personalizados de cada instância) e ter toots maiores.

Recomendamos o Mastodon, especialmente os forks mencionados, para a maioria das pessoas que
quiserem uma esperiência simples, completa, fácil de usar e sem complicações.

## Gostei! Que instância devo escolher?

Algumas insâncias do Fediverso conhecidas por boas praticas de
moderação e que reunem fãs de software livre são:

- [wetdry.world](https://wetdry.world/) (para jogos, tecnologia, pessoas LGBT+, etc) (Chuckya)
- [tech.lgbt](https://tech.lgbt/) (para pessoas LGBT+ interessadas em tecnologia) (glitch-soc)
- [tiggi.es](https://tiggi.es/) (para furries interessados em tecnologia e/ou arte) (Mastodon vanilla)
- [mastoart.social](https://mastoart.social) (para artistas) (Mastodon vanilla)
- [corteximplant.com](https://corteximplant.com/) (para interessados em cyberpunk) (glitch-soc)
- [mastodon.gamedev.place](https://mastodon.gamedev.place/) (para desenvolvedores de jogos) (Mastodon vanilla)
- [ursal.zone](https://ursal.zone/) (instância brasileira) (Mastodon vanilla)
- [floss.social](https://floss.social/) (para grupos, instituições e empresas FLOSS) (Mastodon vanilla)

*Lembre-se que você pode seguir contas de outras instâncias, mas a escolha
ainda é importante: ela facilita encontrar as primeiras pessoas com interesses
similares aos seus, por causa da timeline local. Pode ser interessante dar uma olhada
na timeline local da instância desejada antes de se inscrever, se for pública.  

Não recomendamos [mastodon.social](), pois é mal moderada
e muito grande - o que vai contra o ideal de descentralização e
prejudica conhecer as primeiras pessoas (onboarding) com o uso da timeline local.  
<!-- Pro futuro: Talvez tabelhinha de vantagens e desvantagens, recomendadas e não recomendadas? -->
Leia as regras da instância antes de criar uma conta.  
Algumas das instâncias citadas requerem convite, entre no telegram
do GELOS que podemos tentar ajudar.  
Essas são apenas sugestões, o GELOS não possui qualquer relação com
as instâncias mencionadas nesse artigo.*

## E depois? Como encontro gente para seguir?

No Mastodon sua timeline não é gerada por um algorítmo 
focado em lucro, mas moldada por você com as pessoas 
que escolhe seguir.  
Recomendamos utilizar a função de timeline local do 
Mastodon para encontrar pessoas com interesses similares aos
seus, além de buscar por hashtags que você gosta. Com o tempo,
as pessoas que você segue vão compartilhando os toots (assim que 
se chamam os 'posts' no fedi) de outras pessoas e você vai
aumentando sua timeline.

Apps bons para Mastodon incluem: Feditext, Ice Cubes, Mona, 
Mammoth (iOS), Tusky, Fedilab, Moshidon (Android) e Tuba (Linux)

Algumas contas interessantes para seguir: 
@GELOS@floss.social (GELOS), @torvalds@social.kernel.org (Linus Torvalds),
@KDE@floss.social (KDE), @xfce@floss.social (XFCE), @linuxfoundation@social.lfx.dev (Linux Foundation),
@foone@digipres.club (foone), @soller@fosstodon.org (Pop!_OS),
@godotengine@mastodon.gamedev.place (Godot),
@panic@panic.com (Firewatch), @maddy@mastodon.gamedev.place (Celeste).
<!-- Pro futuro: Melhorar essa parte -->

*Essas são apenas sugestões, o GELOS não possui qualquer relação com as contas
acima, exceto com nossa conta [@GELOS@floss.social](https://floss.social/@GELOS).*

## Como faço para seguir o GELOS?

É só abrir o campo de busca da **sua instância** (na web ou num app),
digitar o usuário (`@GELOS@floss.social`) e clicar em seguir!

![imagem mostrando o procedimento mencionado acima](/assets/static/gelos-fediverse/follow-tutorial-compact.png)

Você também pode seguir hashtags, o
que é bastante útil para suas primeiras
interações!

No campo de busca você também pode colar links
para toots (para abri-los na sua instância e interagir) e
usuários.

## É isso! Dúvidas?

Fique à vontade para tirar dúvidas ou pedir ajuda sobre Mastodon, 
Fediverso e outros softwares livres em nosso grupo no [Telegram](https://telegram.gelos.club/) ou
em nossos [Plantões de Dúvidas](/projetos/plantao.html)!  
O site [fedi.tips](https://fedi.tips) também pode ajudar.

Abaixo o artigo continua com alguns comentários sobre outros tipos de redes sociais no Fedi e
self-hosting.

## Quero me aprofundar mais

### Quais são os outros tipos de redes sociais no Fediverso?

Antes de escolher sua instância, você pode escolher qual modelo de
rede social você mais gosta! O Mastodon é o mais comum, mas também existem
diversas outras opções para quem quer mais funções ou para quem não gosta do
modelo de microblogging.

Enquanto você só precisa de conta em uma instância de um desses softwares para
interagir com o fediverso inteiro, alguns softwares possuem intenções diferentes
(microblogging VS agregador de links VS vídeos, por exemplo). Caso você se interesse por mais de um tipo
de rede, pode ser interessante criar uma conta para cada tipo.

(Por exemplo: Não faz sentido ter conta em mais de uma instância do Mastodon (a não ser que
você queira uma conta pública e uma mais privada com pessoas diferentes), mas caso você queira
interagir frequentemente com posts do Mbin pode ser interessante criar uma conta
numa instância dele também. Pensa assim: da mesma forma que você teria uma conta no Reddit e uma
conta no Instagram, mas não várias contas no Reddit, pode fazer sentido você ter uma conta numa instância Mastodon, uma
numa instância Mbin e uma numa instância Pixelfed (mas não várias contas em instâncias diferentes do Mastodon).)

#### Sharkey

O Sharkey, assim como o Mastodon, é uma opção de Microblogging, mas conta com inúmeras funções extras. O MFM (misskey-flavoured markdown)
permite que toots sejam formatados com um nível extremo de customização, incluindo até
animações e fundos. Uma desvantagem do Sharkey é que, com seu exagero de features,
sua interface web tem um carregamento um pouco lento até em boas conexões. Ele é um
fork do Misskey, assim como o IceShrimp.

Instâncias que usam esses softwares federam muito bem com o Mastodon, já que são do mesmo tipo (microblogging), mas algumas coisas (como MFM)
podem não ser renderizadas corretamente fora das que usam Sharkey.

Algumas opções de instâncias incluem:

- [capivarinha.club](https://capivarinha.club) (instância brasileira)

#### Mbin

Estilo fórum/agregador (semelhante ao Reddit). Permite criar comunidades temáticas, abrir tópicos,
comentar e votar (up/down) para destacar conteúdo; tem ferramentas de moderação por comunidade e ordenação por votos ou mais recentes. Por ser federado, você
pode seguir e interagir com comunidades de outras instâncias, tornando-o uma boa opção 
para quem quer um espaço organizado em tópicos e debates descentralizados.

Por terem uma arquitetura diferente da do Mastodon, os posts estilo artigos, nas "Magazines" (equivalentes aos subreddits), não são totalmente renderizados 
na maioria dos forks do Mastodon. Caso você
siga uma magazine a partir da sua conta do Mastodon você verá o título deles seguido de um link para ler o post completo.  
No entanto, comentários nesses posts federam
normalmente, permitindo que você comente neles a partir até mesmo do Mastodon, Sharkey ou qualquer outro software do fediverso. Também é possível
publicar nas magazines a partir desses softwares, marcando-as no seu toot e colocando o "título" na primeira linha.  
Posts em outras instâncias do Mbin serão mostrados tranquilamente na sua instância do Mbin.

Algumas opções de instâncias incluem:

- [fedia.io](https://fedia.io/)

#### Pixelfed

Plataforma para compartilhamento de imagens, parecida com o Instagram. Foca em fotos e álbuns, legendas, hashtags, curtidas e comentários, com timeline
cronológica e sem algoritmo de recomendação centralizado, priorizando privacidade e controle do usuário. Ideal para fotógrafos e artistas que querem
publicar imagens sem depender de grandes plataformas centralizadas.

Federa muito bem com o Mastodon, Sharkey e Mbin.

Algumas opções de instâncias incluem:

- [pixey.org](https://pixey.org)

#### Loops

Plataforma para vídeos curtos em formato vertical, inspirada no modelo do TikTok. Voltada para conteúdo rápido, com funcionalidades básicas de curtidas,
comentários e compartilhamento. Ótima para quem quer consumir/produzir vídeos curtos sem os algoritmos de plataformas comerciais.

Ainda está no começo de seu desenvolvimento, feita pelo mesmo desenvolvedor do Pixelfed, mas já federa bem com o Mastodon.

Algumas opções de instâncias incluem:

- [loops.video](https://loops.video/)

#### PeerTube

Plataforma federada de hospedagem de vídeo, similar ao YouTube, mas descentralizada. Cada instância hospeda seus canais e vídeos, com suporte a playlists,
inscrições, moderação e incorporação; usa WebTorrent para streaming P2P, reduzindo uso de banda do servidor, e integra-se via ActivityPub para federar 
com outras instâncias. Indicada para criadores, coletivos e instituições que querem controlar o hosting e as regras de conteúdo.

Comentários, curtidas e inscrições podem ser feitas a partir do Mastodon e Sharkey normalmente, mas por uma questão de
armazenamento o vídeo deve ser aberto em uma instância do PeerTube (mesmo sem conta, só clicando no link) para ser assistido.

Algumas opções de instâncias incluem:

- [peertube.lhc.net.br](https://peertube.lhc.net.br/)

### O que é desfederação?

Desfederação é quando uma instância decide cortar totalmente a federação com outra, ou seja, parar de trocar mensagens ActivityPub (toots, boosts, follows,
atualizações de perfil) com ela. Geralmente ocorre como medida de segurança e moderação: instâncias que promovem ódio (ex.: neonazismo,
LGBT+fobia), que possuem conteúdo ilegal ou que sistematicamente hospedam contas desse tipo tendem a ser rapidamente desfederadas pela maioria das
instâncias bem moderadas para proteger usuários.

Uma opção menos radical, aplicada à instâncias com problemas temporários ou não tão graves, é a limitação. A limitação é granular, permitindo que os
admins limitem a visibilidade de contas de uma instância sem afetar as pessoas que intencionalmente seguem alguém de lá. Tanto o bloqueio total quanto a
limitação também podem ser aplicadas a contas específicas ao invés de instâncias inteiras.

Infelizmente, mais raramente a desfederação pode acontece por “draminhas” entre admins. O efeito prático é que, após a desfederação,
posts e boosts daquela instância não chegam mais aos servidores que a bloquearam (e vice-versa), prejudicando a comunidade. Para evitar que esse
tipo de acontecimento te afete, é recomendado escolher uma instância de pequeno a médio porte para sua conta. Nos esforçamos para recomendar somente instâncias
com boas práticas de moderação e que não costumam ser afetadas ou participar desse tipo de drama, mas note que não possuímos qualquer relação com a
administração delas.

### Mas e o self-hosting?

Hospedar sua própria instância te dá controle total sobre os seus dados, as regras de moderação e a identidade da instância: você define políticas, 
plugins, emojis, aparência e quem pode entrar. É uma opção para grupos pequenos ou pessoas experientes com self-hosting que querem ter total liberdade para
escplher com quem federar, além de permitir customização de recursos e prioridades de infraestrutura (por exemplo backups, retenção de mídia e limites de
armazenamento). Com self‑hosting de uma instância pessoal você também reduz o risco de ser afetado por drama ou desfederações que você não concorda.

No entanto, administrar uma instância própria exige conhecimento técnico e tempo - configuração inicial, atualizações, backups, segurança e monitoramento
consomem recursos e podem ter custos com servidor, disco e banda.

Socialmente, é mais difícil encontrar gente para seguir: se você for o único usuário ativo na sua instância, a timeline local ficará somente com
seus próprios toots e será preciso esforço extra para encontrar pessoas.

Tecnicamente falando, um toot público só é entregue (federado) para outra instância quando há motivo para envio. Por exemplo, se um usuário dessa
instância segue o autor, a instância original envia os toots para as instâncias dos seguidores, ou se alguém em outra instância que tem seguidores faz
um “boost” (republica) do toot, essa atividade é então entregue aos seguidores dessa pessoa e pode aparecer nas instâncias deles. 
Nem toda instância recebe todos os toots públicos, o que limita para você a visibilidade de contas que você não segue na sua instância.

Por isso, caso você tenha interesse em self-hostear, é interessante começar primeiro em uma instância pública que tenha interesse, começar a conhecer e seguir
pessoas, conhecer a plataforma, e só depois de alguns meses migrar sua conta para sua própria instância.

Além disso, você precisará lidar sozinho com moderação de abusos, spam e disponibilidade do serviço, desfederando instâncias com ataques, LGBT+fobia 
e conteúdo ilegal, o que pode ter um grande peso emocional.

Não é preciso ter sua própria instância para usar o Fediverso, note que mesmo no GELOS a maioria das pessoas usa uma instância
pública feita por outras pessoas da comunidade.

### Quero aprender como o ActivityPub funciona e como ter minha própria instância

Ótimo! Fique ligade, no futuro planejamos ter uma página na [Wiki](/wiki) e talvez até workshops para quem quer se aprofundar
no funcionamento técnico do Fediverso ou criar sua própria instância. Também estamos organizando um Grupo de Estudos ([GE](/projetos/grupos-de-estudo.html))
sobre Fediverso e ActivityPub, sinta-se livre para participar no nosso [Telegram](https://telegram.gelos.club).

## Feedback

Essa página tem como objetivo ser um guia simples, com as informações mais importantes para o uso do Fediverso por um usuário comum, mas como nerds às vezes
nos empolgamos e podemos deixar as coisas mais complicadas que elas de fato são. Por favor compartlhe suas sugestões conosco em nosso [Telegrasm](https://telegram.gelos.club)

Tentamos manter a página sempre atualizada e melhora-la frequentemente, caso ache algum problema ou tenha alguma sugestão por favor nos avise!