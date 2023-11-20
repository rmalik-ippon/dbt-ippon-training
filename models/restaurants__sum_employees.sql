select
    sum(nb_employees) as sum_employees
from
    {{ ref('base_restaurants') }}