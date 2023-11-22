select
    distinct orders.*
from
    {{ mockable_source('source', 'orders', 'sample_orders') }} as orders