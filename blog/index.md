---
layout: post
---

## Blog

<table class="blog-list">
{% for post in site.posts %}
<tr>
    <td>
        <a href="{{ post.url }}">{{ post.title }}</a>
    </td>
    <td>
        {{ post.date | date: "%Y-%m-%d" }}
    </td>
</tr>
{% endfor %}
</table>