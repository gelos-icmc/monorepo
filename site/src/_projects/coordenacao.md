---
title: Coordenação
authors: 
    - Gabriel
    - Furry
    - Natan
lang: pt-BR
state: permanent
---

Coordenação e estrutura do grupo

O GELOS busca ter uma gerência dividida em frentes, cada projeto possuindo sua própria organização. A frente de coordenação surge da necessidade de
haver uma coesão entre tais projetos, mantendo o grupo unido e ativo. Em seus deveres, essa frente mantém as outras frentes vivas, lida com burocracias
que não são específicas de uma frente, como prestações de contas para a USP, e documentam os procedimentos internos e externos para os futuros membros.

No momento, os líderes da frente de coordenação são eleitos a cada plenária.

Atualmente, os líderes da coordenação são:

{% for author in page.authors %}
  - {% include person.html name=author %}  
{%- endfor -%}  <br/> <!-- Por algum motivo sem esse br ele bota o texto abaixo na mesma linha, o que é estranho -->

Os deveres e poderes definidos para a coordenação são:

- Resolver "deadlock" em outras frentes, podendo, em último caso, alterar os líderes delas caso seja necessário para retomar suas atividades
- Lidar com burocracias que não digam respeito a frentes específicas, podendo resolver burocracias urgentes sem a necessidade de levar para reuinão
- Moderação do chat, podendo resolver conflitos entre membros desde que eles não façam parte da coordenação
- Documentar os processos burocráticos, tendo em vista facilitar a longevidade do grupo e o treinamento de futuros coordenadores e líderes de frentes

As plenárias (e reuniões com quórum equivalente) são soberanas, tendo poder de override sobre quaisquer decisões da coordenação.
A discussão sobre outros modelos de coordenação está sempre aberta em reuniões plenárias.

## Documentação Interna

Tendo em vista manter uma documentação para consulta futura, aqui são descritos os processos burocráticos da USP, como reserva de salas e envio de relatórios, que nossos membros podem encontrar durante a organização de atividades do grupo.

### Divulgação nas Listas de E-Mail
- Enviar e-mail solicitando
  - ICMC: comunica@icmc.usp.br
  - IFSC: comuinicados@ifsc.usp.br
  - EESC: comunicacao@eesc.usp.br
  - IQSC: comunicacao@iqsc.usp.br
  - IAU: comunicacao@iau.usp.br
- Modelo de e-mail:

```
Boa tarde!

Venho por meio desta solicitar, em nome do GELOS (Grupo de Extensão em Livre e Open Source - ICMC) e do Centro de Competência em Open Source (CCOS), a divulgação (nas listas de e-mail do instituto) da nossa XXXXX, evento que irá acontecer dia XXXXX, das XXXXX às XXXXX.

Os professores responsáveis pelo grupo são Francisco Monaco, Elisa Yumi e Eduardo Simões.

Eu, XXXXX (num USP: XXXXX), do XXXX, serei a aluna responsável pelo evento.
 
O texto da divulgação: 
 
“
XXXXX
”
 
A imagem/Flyer da divulgação está em anexo: XXXXX
 
Desde já, agradeço a atenção!

Atenciosamente,
XXXXX
```

### Reserva do Hiperspaço Loibel (Vão da Biblioteca do ICMC)

- Enviar e-mail para eventos@icmc.usp.br solicitando reserva
  - [Seção de Apoio Institucional](https://icmc.usp.br/institucional/estrutura-administrativa/secao-de-apoio-institucional)
- Modelo de e-mail:

```
Boa tarde!

Venho por meio desta solicitar, em nome do GELOS (Grupo de Extensão em Livre e Open Source - ICMC) e do Centro de Competência em Open Source (CCOS), a reserva do Hiperespaço Loibel (Vão da Biblioteca) no dia XXXXX, das XXXXX às XXXXX.
O motivo da reserva é a realização da XXXXX do GELOS.

Os professores responsáveis pelo grupo são Francisco Monaco, Elisa Yumi e Eduardo Simões.

Eu, XXXXX (num USP: XXXXX), do XXXX, serei a aluna responsável pelo evento.
 
Desde já, agradeço a atenção!

Atenciosamente,
XXXXX
```

### Reserva dos Labs de Computação do IFSC

- Mandar e-mail para a Dani (dsjdani@ifsc.usp.br), com as seguintes informações
  - Motivo da solicitação
  - Dia/horário
  - Público Alvo e quantidade (lab 206 - 40 lugares / lab 205 - 30 lugares)
  - Prof. responsável (botar em cc no e-mail)
  - Aluno Responsável (nro USP)
- Modelo de e-mail:

```
Oi, Dani! Tudo bem?

Gostaria de solicitar, em nome do GELOS (Grupo de Extensão em Livre e Open Source - ICMC) e do Centro de Competência em Open Source (CCOS), a reserva do Lab XXX de computação no dia XXXXX, das XXXXX às XXXXX. Estimamos XXX participantes.
O motivo da reserva é a realização da XXXXX do GELOS.

Os professores responsáveis pelo grupo são Francisco Monaco, Elisa Yumi e Eduardo Simões.

Eu, XXXXX (num USP: XXXXX), do XXXX, serei a aluna responsável pelo evento.
 
Desde já, agradeço a atenção!

Atenciosamente,
XXXXX
```

### Reserva de Outras Salas
- A maioria das salas no IFSC e no ICMC podem ser reservadas pelo sistema de seus respectivos institutos, no entando existem exceções como as listadas acima.
  - Os sistemas podem requerer uma conexão ao Eduroam ou à VPN da USP para permitir o acesso.
  - [IFSC](https://sistemas.ifsc.usp.br/)
  - [ICMC](https://sistemas.icmc.usp.br/)