---
layout: post
---

## Blog

{% for post in site.posts %}
<table class="blog-list">
<tr>
    <td>
        <a href="{{ post.url }}">{{ post.title }}</a>
    </td>
    <td>
        {{ post.date | date: "%Y-%m-%d" }}
    </td>
</tr>
</table>
{% endfor %}