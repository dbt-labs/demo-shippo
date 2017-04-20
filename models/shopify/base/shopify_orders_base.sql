{{config(materialized = 'ephemeral')}}

select
    -- ids
    id,
    customer__id,
    checkout_id,
    cart_token,
    checkout_token,
    token,

    -- logical ids reported in the application
    "number",
    order_number,

    -- state
    financial_status,
    fulfillment_status,
    confirmed,

    -- cancellation information
    cancel_reason,
    cancelled_at,

    -- etc
    closed_at,
    processed_at,
    email,
    contact_email,
    name,
    note,
    tags,

    -- attribution
    browser_ip,
    source_name,
    landing_site,
    null::varchar as landing_site_ref,
    referring_site,

    -- financial
    currency,
    processing_method,

    -- numbers
    subtotal_price,
    taxes_included,
    total_discounts,
    total_line_items_price,
    total_price,
    total_price_usd,
    total_tax,
    total_weight,

    -- point of sale info
    user_id,
    location_id,

    -- address
    shipping_address__address1,
    shipping_address__address2,
    shipping_address__city,
    shipping_address__company,
    shipping_address__country,
    shipping_address__country_code,
    shipping_address__first_name,
    shipping_address__last_name,
    shipping_address__latitude,
    shipping_address__longitude,
    shipping_address__name,
    shipping_address__phone,
    shipping_address__province,
    shipping_address__province_code,
    shipping_address__zip,
    billing_address__address1,
    billing_address__address2,
    billing_address__city,
    billing_address__company,
    billing_address__country,
    billing_address__country_code,
    billing_address__first_name,
    billing_address__last_name,
    billing_address__latitude,
    billing_address__longitude,
    billing_address__name,
    billing_address__phone,
    billing_address__province,
    billing_address__province_code,
    billing_address__zip,

    -- audit
    created_at,
    updated_at,
    test

from
  shippo_chooze_shopify.orders
