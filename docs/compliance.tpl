<table border="0" class="table">
    <thead>
        <tr>
            <th>Lesson</th>
            <th>PDFreactor</th>
            <th>PrinceXML</th>
            <th>Antennahouse</th>
            <th>Vivliostyle</th>
        </tr>
    </thead>
    <tbody>
        {% for lesson in rows %}
            <tr>
                <td><a href="{{ lesson}}.html">{{ lesson }}</a></td>
                <td>
                    {% if rows[lesson].get('PDFreactor') %}
                        {{ rows[lesson]['PDFreactor']['status'] }}
                    {% endif %}
                </td>
                <td>
                    {% if rows[lesson].get('PrinceXML') %}
                        {{ rows[lesson]['PrinceXML']['status'] }}
                    {% endif %}
                </td>
                <td>
                    {% if rows[lesson].get('Antennahouse') %}
                        {{ rows[lesson]['Antennahouse']['status'] }}
                    {% endif %}
                </td>
                <td>
                    {% if rows[lesson].get('Vivliostyle') %}
                        {{ rows[lesson]['Vivliostyle']['status'] }}
                    {% endif %}
                </td>
            </tr>
        {% endfor %}
    </tbody>
</table>
