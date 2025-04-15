---
title: Membros ativos por ano
author: Gabriel
---

Todos os membros que participaram de ao menos uma reunião no ano.

{% assign years = site.meetings | group_by_exp: "post", "post.date | date: '%Y'" | reverse %}
{% for year in years %}

<h2 id={{ year.name }}><a href="#{{ year.name }}">#</a> {{ year.name }}</h2>

{% assign active_members = "" | split: "" %}

{% for meeting in year.items %}
  {% for attendee in meeting.attendees %}
    {% assign active_member = attendee | slugify: "latin" %}
    {% assign active_members = active_members | push: active_member | uniq %}
  {% endfor %}
{% endfor %}

<ol>
{% for active_member in active_members %}
<li>{% include person.html detailed=true name=active_member %}</li>
{% endfor %}
</ol>

{% endfor %}
