---
layout: default
single: true
---

<div>
<article class="hentry" role="article">
  {% include article.html %}
  <footer>
    <p class="meta">
		Filed on <time>{{ page.date | date: "%b %-d, %Y" }}</time> under <span class="category">{% include post/categories.html %}</span> 
    </p>
    <p class="meta">
      {% if page.previous.url %}
        <a class="basic-alignment left" href="{{page.previous.url}}" title="Previous Post: {{page.previous.title}}">{{page.previous.title}}</a>
      {% endif %}
      {% if page.next.url %}
        <a class="basic-alignment right" href="{{page.next.url}}" title="Next Post: {{page.next.title}}">{{page.next.title}}</a>
      {% endif %}
    </p>
  </footer>
</article>
</div>
