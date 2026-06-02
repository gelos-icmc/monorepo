---
title: Membros com acesso à salinha
author: Gabriel
---

Relatório com lista dos membros e seus dados necessários para cadastrar no sistema do ICMC.

Enviar o [CSV]({% link _reports/acesso-salinha.csv %}) para o [apoioadm@icmc.usp.br](mailto:apoioadm@icmc.usp.br), com CC para os docentes responsáveis pelo GELOS, periodicamente ou sempre que houver alteração.

Ao enviar, caso necessário, explicar que os com filiação que não seja "usp-icmc" precisam de autorização na catraca do bloco 1 também.

{% assign members = site.members | where: "role", "member" | where: "inactive", false | sort: "filiation" %}

<table>
  <tr>
    <th>Nome</th>
    <th>Email</th>
    <th>Filiação</th>
    <th>NUSP/CPF</th>
  </tr>
  {% for member in members %}
    <tr>
      <td>
        <a href="{{ member.url }}">
        {% if member.full_name %}
          {{ member.full_name }}
        {% else %}
          {{ member.title }}
        {% endif %}
        </a>
      </td>
      <td>{{ member.email | default: "???" }}</td>
      <td>
        {{ member.filiation | default: "---" }}
      </td>
      <td>
        {% if member.filiation contains "usp" %}
          {{ member.nusp | default: "???" }}
        {% else %}
          {{ member.cpf | default: "??? "}}
        {% endif %}
      </td>
    </tr>
  {% endfor %}
</table>
