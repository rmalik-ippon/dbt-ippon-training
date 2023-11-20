{% macro mockable_source(source_name, table_name, sample_name) %}
    {% if target.name.lower() == 'prod' %}
        {{ source(source_name, table_name) }}
    {% else %}
        {{ ref(sample_name) }}
    {% endif %}
{% endmacro %}