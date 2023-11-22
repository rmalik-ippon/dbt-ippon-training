select
    flatten_result.value as user_input,
    fuzzy_orders.payment_method,
    fuzzy_orders.amount,
    fuzzy_orders.created_at
from
    {{ ref('base_fuzzy_orders') }} fuzzy_orders,
    LATERAL FLATTEN(input => parse_json(fuzzy_orders.dishes_names)) flatten_result