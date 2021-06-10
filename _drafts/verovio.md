---
layout: page
title: Verovio
permalink: /verovio/
---
### Samples

__Playable transcriptions encoded in [MEI](https://music-encoding.org/) and displayed with [Verovio](https://www.verovio.org/index.xhtml)__

### ***Document collection***


<!-- Verovio document collection -->
<table>
{% tablerow  item in site.verovio cols:2 %}
<a href="{{ site.baseurl }}/verovio/{{ item.shortname }}/">{{ item.name }}</a>
{% endtablerow %}
</table>


<!-- alernate liquid script for generating links -->
<!-- <font size="+1">
<ul>
  {% for item in site.verovio %}
    <li>

      <a href="{{ site.baseurl }}/verovio/{{ item.shortname }}/">{{ item.name }}</a>

    </li>
  {% endfor %}
</ul>
<font size="+1"> -->
