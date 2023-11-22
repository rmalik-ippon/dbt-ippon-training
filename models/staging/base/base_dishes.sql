select
    *
from
    {{ source('source', 'dishes') }}