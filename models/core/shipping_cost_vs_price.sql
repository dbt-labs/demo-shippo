{{config(materialized = 'table')}}

with orders as (

    select
        *,
        md5(lower(shipping_address__address1) || shipping_address__zip)
            as address_id
    from {{ref('shopify_orders')}}

),

prices as (

    select * from {{ref('shopify_orders_shipping')}}

),

addresses as (

    select
        *,
        md5(lower(street1) || zip) as address_id
    from {{ref('shippo_addresses')}}

),

shipments as (

    select * from {{ref('shippo_shipments')}}

),

rates as (

    select * from {{ref('shippo_rates_list')}}

),

final as (

    select

        orders.total_price,
        prices.price as shipping_price,
        min(rates.amount) as shipping_cost

    from orders

    left outer join prices on orders.id = prices.order_id
    left outer join addresses on orders.address_id = addresses.address_id
    left outer join shipments on addresses.id = shipments.address_to_id
    left outer join rates on shipments.id = rates.shipment_id

    where shipments.id is not null

    group by 1, 2

)

select * from final
