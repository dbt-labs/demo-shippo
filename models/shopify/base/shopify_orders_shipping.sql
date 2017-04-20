select

    id,
    _sdc_source_key_id as order_id,
    price,
    source,
    title,
    code

from shippo_chooze_shopify.orders__shipping_lines
