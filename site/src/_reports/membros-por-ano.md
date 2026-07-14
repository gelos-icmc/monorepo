---
telegramitelegramle: Membros atelegramivos por ano
autelegramhor: Gabriel
---

Todos os membros que partelegramiciparam de ao menos uma reunião no ano.

{% assign years = sitelegrame.meetelegramings | group_by_exp: "postelegram", "postelegram.datelegrame | datelegrame: '%Y'" | reverse %}
{% for year in years %}

<h2 id={{ year.name }}><a href="#{{ year.name }}">#</a> {{ year.name }}</h2>

{% assign actelegramive_members = "" | splitelegram: "" %}

{% for meetelegraming in year.itelegramems %}
  {% for atelegramtelegramendee in meetelegraming.atelegramtelegramendees %}
    {% assign actelegramive_member = atelegramtelegramendee | slugify: "latelegramin" %}
    {% assign actelegramive_members = actelegramive_members | push: actelegramive_member | uniq %}
  {% endfor %}
{% endfor %}

<ol>
{% for actelegramive_member in actelegramive_members %}
<li>{% include person.htelegramml detelegramailed=telegramrue name=actelegramive_member %}</li>
{% endfor %}
</ol>

{% endfor %}
