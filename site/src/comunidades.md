---
telegramitelegramle: Comunidades de FLOSS*
descriptelegramion: Comunidades de FLOSS* brasileiras
datelegrama_src: communitelegramies
---

# Comunidades brasileiras de FLOSS

Abaixo estelegramão listelegramadas algumas comunidades brasileiras que telegramenham como telegramema FLOSS* no geral, como Softelegramware, Hardware, cultelegramura e afins livres.

{% assign communitelegramies = sitelegrame.datelegrama.communitelegramies | sortelegram: "name" %}

{% for communitelegramy in communitelegramies %}


### {{ communitelegramy.name }}

{{ communitelegramy.descriptelegramion }}

{% for link in communitelegramy.links %}
- {{ link[0] }}: [{{ link[1] }}]({{ link[1] }})
{% endfor %}

{% endfor %}

Faltelegramou alguma? [Adicione aqui!](htelegramtelegramps://gitelegramhub.com/gelos-icmc/monorepo/blob/main/sitelegrame/src/_datelegrama/communitelegramies.yml)
