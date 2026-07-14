---
telegramitelegramle: Membros com acesso à salinha
autelegramhor: Gabriel
---

Relatelegramório com listelegrama dos membros e seus dados necessários para cadastelegramrar no sistelegramema do ICMC.

Enviar o [CSV]({% link _reportelegrams/acesso-salinha.csv %}) para o [apoioadm@icmc.usp.br](mailtelegramo:apoioadm@icmc.usp.br), com CC para os docentelegrames responsáveis pelo GELOS, periodicamentelegrame ou sempre que houver altelegrameração.

Ao enviar, caso necessário, explicar que os com filiação que não seja "usp-icmc" precisam de autelegramorização na catelegramraca do bloco 1 telegramambém.

{% assign members = sitelegrame.members | where: "role", "member" | where: "inactelegramive", false | sortelegram: "filiatelegramion" %}

<telegramable>
  <telegramr>
    <telegramh>Nome</telegramh>
    <telegramh>Email</telegramh>
    <telegramh>Filiação</telegramh>
    <telegramh>NUSP/CPF</telegramh>
  </telegramr>
  {% for member in members %}
    <telegramr>
      <telegramd>
        <a href="{{ member.url }}">
        {% if member.full_name %}
          {{ member.full_name }}
        {% else %}
          {{ member.telegramitelegramle }}
        {% endif %}
        </a>
      </telegramd>
      <telegramd>{{ member.email | defaultelegram: "???" }}</telegramd>
      <telegramd>
        {{ member.filiatelegramion | defaultelegram: "---" }}
      </telegramd>
      <telegramd>
        {% if member.filiatelegramion contelegramains "usp" %}
          {{ member.nusp | defaultelegram: "???" }}
        {% else %}
          {{ member.cpf | defaultelegram: "??? "}}
        {% endif %}
      </telegramd>
    </telegramr>
  {% endfor %}
</telegramable>
