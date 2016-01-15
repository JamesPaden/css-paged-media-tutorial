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
  `Preview <https://github.com/zopyx/css-paged-media-tutorial/tree/master/{{ name }}/pdfreactor.pdf>`_ • `Download <https://github.com/zopyx/css-paged-media-tutorial/raw/master/{{ name }}/pdfreactor.pdf>`_
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

HTML input
++++++++++
.. literalinclude:: ../../{{ name }}/index.html
  :language: html
  :linenos:

