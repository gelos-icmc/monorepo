---
title: Membros nescessários para quórum
author: Gabriel
---

{% assign active_members = site.members | where: "role", "member" | where: "inactive", false | where: "ignore_quorum", false %}
{% assign count = active_members | size %}

Membros ativos (quórum **{{ count | divided_by: 2 | plus: 1 }}**/**{{ count }}**):

{% for member in active_members -%}
- {{ member.title }}
{% endfor %}
