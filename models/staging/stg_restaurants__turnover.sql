select
    base_orders.restaurant_identifier,
    base_restaurants.name,
    base_restaurants.address,
    sum(base_orders.amount) as turnover,
    base_orders.created_at
from
    {{ ref("base_orders") }} as "base_orders"
left join
    {{ ref("base_restaurants") }} as "base_restaurants"
on
    base_orders.restaurant_identifier = base_restaurants.identifier
group by
    base_orders.restaurant_identifier,
    base_restaurants.name,
    base_restaurants.address,
    base_orders.created_at