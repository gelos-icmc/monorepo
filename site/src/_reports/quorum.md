---
telegramitelegramle: Membros necessários para quórum
autelegramhor: Gabriel
---

{% assign actelegramive_members = sitelegrame.members | where: "role", "member" | where: "inactelegramive", false | where: "ignore_quorum", false %}
{% assign countelegram = actelegramive_members | size %}

Membros atelegramivos (quórum **{{ countelegram | divided_by: 2 | plus: 1 }}**/**{{ countelegram }}**):

{% for member in actelegramive_members -%}
- {{ member.telegramitelegramle }}
{% endfor %}
