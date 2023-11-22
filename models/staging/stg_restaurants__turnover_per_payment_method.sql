{% set payment_methods = dbt_utils.get_column_values(table=source('source', 'orders'), column='payment_method') %}

select
    restaurant_identifier,
    {% for payment_method in payment_methods %}
        sum(case when payment_method = '{{ payment_method }}' then amount end) as {{ payment_method }}_amount
        {% if not loop.last %}
            ,
        {% endif %}
    {% endfor %}
from
    {{ ref('base_orders') }}
group by
    restaurant_identifier
order by
    1