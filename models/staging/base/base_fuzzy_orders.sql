select
    fuzzy_orders.*
from
    {{ source('source', 'fuzzy_orders') }} as fuzzy_orders