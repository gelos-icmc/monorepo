---
title: CTFs
description: Participações em eventos de Capture the Flag
state: in_progress
---

Além dos outros eventos dos quais o GELOS participa e promove, o grupo também
participa de eventos de Capture the Flag, tanto de maneira independente, quanto 
em parceria com outros times de CTF do Brasil.

Esta página lista nossas participações, e as páginas delas as
contextualizam.

{% for post in site.posts %}
  {%- if post.project == "ctf" %}
    {%- include listagem.html %}
  {%- endif %}
{% endfor %}
