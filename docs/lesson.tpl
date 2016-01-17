Lesson: {{ name }}
=====================================================

.. include:: ../../{{ name }}/README.rst


Repository files
++++++++++++++++

- https://github.com/zopyx/css-paged-media-tutorial/tree/master/{{ name }}

PDF files
+++++++++

 .. raw:: html

    <table class="table">
        <thead>
            <tr>
                <th>Converter</th>
                <th>Status</th>
                <th>PDF Preview</th>
                <th>PDF Download</th>
                <th>Comment</th>
            </tr>
        </thead>
        <tbody>
            {% for entry in pdfs %}
                <tr>
                    <td>
                        {{ entry.name }}
                    </td>
                    <td>
                        {{ entry.status }}
                    </td>
                    <td>
                        <a href="https://github.com/zopyx/css-paged-media-tutorial/tree/master/{{ name }}/{{ entry['pdf_file'] }}">Preview</a>
                    </td>
                    <td>
                        <a href="https://github.com/zopyx/css-paged-media-tutorial/raw/master/{{ name }}/{{ entry['pdf_file'] }}">Download</a>
                    </td>
                    <td>
                          {% if entry.message %} 
                          {{ entry.message }}
                          {% endif %}
                    </td>
                </tr>
            {% endfor %}
        </tbody>
    </table>


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
