select
    *
from
    {{ ref('base_restaurants') }}
where
    open_on_sunday::boolean