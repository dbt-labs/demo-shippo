select

    object_id as id,

    shipment as shipment_id,


    amount,
    amount_local,
    available_shippo,
    carrier_account,
    currency,
    currency_local,
    days,
    duration_terms,
    inbound_endpoint,
    insurance,
    insurance_amount,
    insurance_amount_local,
    insurance_currency,
    insurance_currency_local,

    outbound_endpoint,
    provider,

    servicelevel_name as service_level_name,
    servicelevel_terms as service_level_terms,
    servicelevel_token as service_level_token,

    trackable,
    zone,

    object_owner as owner,
    object_purpose as purpose,
    object_state as state,

    object_created as created_at,
    object_updated as updated_at


from shippo_chooze.shipments__rates_list

where test = false
