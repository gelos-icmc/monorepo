---
title: CTFs
description: Participações em eventos de Capture the Flag
collection_src: ctfs
---

# {{ page.title }}
{{ page.description }}

Além dos outros eventos dos quais o GELOS participa e promove, o grupo também
participa de eventos de Capture the Flag, tanto de maneira independente, quanto 
em parceria com outros times de CTF do Brasil.

Esta página lista nossas participações, e as páginas das perticipações as
contextualizam.

{% for post in site.ctfs %}
{% include listagem.html %}
{% endfor %}
