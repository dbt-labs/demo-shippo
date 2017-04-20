{{config(materialized = 'ephemeral')}}

select

    id,
    product_id,
    _sdc_source_key_id,
    sku,
    name,
    title,
    vendor,
    quantity,
    null::float as pre_tax_price,
    price,
    taxable,
    gift_card,
    total_discount,
    grams

from
    shippo_chooze_shopify.orders__line_items
