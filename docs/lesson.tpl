Lesson: {{ name }}
=====================================================

.. include:: ../../{{ name }}/README.rst


Repository files
++++++++++++++++

- https://github.com/zopyx/css-paged-media-tutorial/tree/master/{{ name }}

PDF files
+++++++++

{% for entry in pdfs %}
- **{{ entry.name }}**: {{ entry.status }}
  `Preview <https://github.com/zopyx/css-paged-media-tutorial/tree/master/{{ name }}/{{ entry['pdf_file'] }}>`_ • `Download <https://github.com/zopyx/css-paged-media-tutorial/raw/master/{{ name }}/{{ entry['pdf_file']}}>`_
  {% if entry.message %} 
  {{ entry.message }}
  {% endif %}
{% endfor %}

{% if has_css %}
Stylesheet
++++++++++

.. literalinclude:: ../../{{ name }}/styles.css
  :language: css
  :linenos:

{% endif %}

{% if mode == 'html' %}
HTML input
++++++++++
.. literalinclude:: ../../{{ name }}/index.html
  :language: html
  :linenos:

{% endif %}

{% if mode == 'xml' %}
XML input
+++++++++
.. literalinclude:: ../../{{ name }}/index.xml
  :language: xml
  :linenos:

{% endif %}
